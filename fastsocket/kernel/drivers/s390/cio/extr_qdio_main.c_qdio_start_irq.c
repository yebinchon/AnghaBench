
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int queue_irq_state; } ;
struct TYPE_7__ {TYPE_2__ in; } ;
struct qdio_q {TYPE_3__ u; TYPE_1__* irq_ptr; } ;
struct qdio_irq {struct qdio_q** input_qs; } ;
struct ccw_device {TYPE_4__* private; } ;
struct TYPE_8__ {struct qdio_irq* qdio_data; } ;
struct TYPE_5__ {scalar_t__* dsci; } ;


 int ENODEV ;
 int QDIO_QUEUE_IRQS_DISABLED ;
 int WARN_ON (int ) ;
 int clear_bit (int ,int *) ;
 int qdio_inbound_q_done (struct qdio_q*) ;
 int qdio_stop_polling (struct qdio_q*) ;
 int queue_irqs_enabled (struct qdio_q*) ;
 int shared_ind (struct qdio_q*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int xchg (scalar_t__*,int ) ;

int qdio_start_irq(struct ccw_device *cdev, int nr)
{
 struct qdio_q *q;
 struct qdio_irq *irq_ptr = cdev->private->qdio_data;

 if (!irq_ptr)
  return -ENODEV;
 q = irq_ptr->input_qs[nr];

 WARN_ON(queue_irqs_enabled(q));

 if (!shared_ind(q))
  xchg(q->irq_ptr->dsci, 0);

 qdio_stop_polling(q);
 clear_bit(QDIO_QUEUE_IRQS_DISABLED, &q->u.in.queue_irq_state);





 if (!shared_ind(q) && *q->irq_ptr->dsci)
  goto rescan;
 if (!qdio_inbound_q_done(q))
  goto rescan;
 return 0;

rescan:
 if (test_and_set_bit(QDIO_QUEUE_IRQS_DISABLED,
        &q->u.in.queue_irq_state))
  return 0;
 else
  return 1;

}
