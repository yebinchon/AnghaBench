
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_irq {int dummy; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {struct qdio_irq* qdio_data; } ;


 int ENODEV ;
 int qdio_free (struct ccw_device*) ;
 int qdio_shutdown (struct ccw_device*,int) ;

int qdio_cleanup(struct ccw_device *cdev, int how)
{
 struct qdio_irq *irq_ptr = cdev->private->qdio_data;
 int rc;

 if (!irq_ptr)
  return -ENODEV;

 rc = qdio_shutdown(cdev, how);

 qdio_free(cdev);
 return rc;
}
