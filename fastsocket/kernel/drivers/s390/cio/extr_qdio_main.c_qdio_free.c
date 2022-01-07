
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qdio_irq {int setup_mutex; int * debug_area; } ;
struct ccw_device {TYPE_2__* private; } ;
struct TYPE_3__ {int sch_no; } ;
struct TYPE_4__ {struct qdio_irq* qdio_data; TYPE_1__ schid; } ;


 int DBF_EVENT (char*,int ) ;
 int ENODEV ;
 int debug_unregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qdio_release_memory (struct qdio_irq*) ;

int qdio_free(struct ccw_device *cdev)
{
 struct qdio_irq *irq_ptr = cdev->private->qdio_data;

 if (!irq_ptr)
  return -ENODEV;

 DBF_EVENT("qfree:%4x", cdev->private->schid.sch_no);
 mutex_lock(&irq_ptr->setup_mutex);

 if (irq_ptr->debug_area != ((void*)0)) {
  debug_unregister(irq_ptr->debug_area);
  irq_ptr->debug_area = ((void*)0);
 }
 cdev->private->qdio_data = ((void*)0);
 mutex_unlock(&irq_ptr->setup_mutex);

 qdio_release_memory(irq_ptr);
 return 0;
}
