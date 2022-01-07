
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qdr {int dummy; } ;
struct qdio_irq {struct qdr* qdr; scalar_t__ chsc_page; int setup_mutex; } ;
struct qdio_initialize {TYPE_3__* cdev; int no_output_qs; int no_input_qs; int output_sbal_addr_array; int input_sbal_addr_array; int output_handler; int input_handler; } ;
struct TYPE_6__ {TYPE_2__* private; } ;
struct TYPE_4__ {int sch_no; } ;
struct TYPE_5__ {struct qdio_irq* qdio_data; TYPE_1__ schid; } ;


 int DBF_EVENT (char*,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int QDIO_IRQ_STATE_INACTIVE ;
 int QDIO_MAX_QUEUES_PER_IRQ ;
 int WARN_ON (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 int mutex_init (int *) ;
 int qdio_allocate_dbf (struct qdio_initialize*,struct qdio_irq*) ;
 scalar_t__ qdio_allocate_qs (struct qdio_irq*,int ,int ) ;
 int qdio_release_memory (struct qdio_irq*) ;
 int qdio_set_state (struct qdio_irq*,int ) ;

int qdio_allocate(struct qdio_initialize *init_data)
{
 struct qdio_irq *irq_ptr;

 DBF_EVENT("qallocate:%4x", init_data->cdev->private->schid.sch_no);

 if ((init_data->no_input_qs && !init_data->input_handler) ||
     (init_data->no_output_qs && !init_data->output_handler))
  return -EINVAL;

 if ((init_data->no_input_qs > QDIO_MAX_QUEUES_PER_IRQ) ||
     (init_data->no_output_qs > QDIO_MAX_QUEUES_PER_IRQ))
  return -EINVAL;

 if ((!init_data->input_sbal_addr_array) ||
     (!init_data->output_sbal_addr_array))
  return -EINVAL;


 irq_ptr = (void *) get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!irq_ptr)
  goto out_err;

 mutex_init(&irq_ptr->setup_mutex);
 qdio_allocate_dbf(init_data, irq_ptr);







 irq_ptr->chsc_page = get_zeroed_page(GFP_KERNEL);
 if (!irq_ptr->chsc_page)
  goto out_rel;


 irq_ptr->qdr = (struct qdr *) get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!irq_ptr->qdr)
  goto out_rel;
 WARN_ON((unsigned long)irq_ptr->qdr & 0xfff);

 if (qdio_allocate_qs(irq_ptr, init_data->no_input_qs,
        init_data->no_output_qs))
  goto out_rel;

 init_data->cdev->private->qdio_data = irq_ptr;
 qdio_set_state(irq_ptr, QDIO_IRQ_STATE_INACTIVE);
 return 0;
out_rel:
 qdio_release_memory(irq_ptr);
out_err:
 return -ENOMEM;
}
