
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sch_no; } ;
struct qdio_irq {scalar_t__ state; int setup_mutex; scalar_t__ orig_handler; TYPE_2__ schid; } ;
struct ccw_device {scalar_t__ handler; TYPE_3__* private; } ;
struct TYPE_4__ {int sch_no; } ;
struct TYPE_6__ {int wait_q; TYPE_1__ schid; struct qdio_irq* qdio_data; } ;


 int BUG_ON (int ) ;
 int DBF_ERROR (char*,int) ;
 int DBF_EVENT (char*,int ) ;
 int ENODEV ;
 int HZ ;
 int QDIO_DOING_CLEANUP ;
 int QDIO_FLAG_CLEANUP_USING_CLEAR ;
 scalar_t__ QDIO_IRQ_STATE_CLEANUP ;
 scalar_t__ QDIO_IRQ_STATE_ERR ;
 scalar_t__ QDIO_IRQ_STATE_INACTIVE ;
 scalar_t__ QDIO_IRQ_STATE_STOPPED ;
 int ccw_device_clear (struct ccw_device*,int ) ;
 int ccw_device_halt (struct ccw_device*,int ) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int irqs_disabled () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ qdio_int_handler ;
 int qdio_set_state (struct qdio_irq*,scalar_t__) ;
 int qdio_shutdown_debug_entries (struct qdio_irq*,struct ccw_device*) ;
 int qdio_shutdown_queues (struct ccw_device*) ;
 int qdio_shutdown_thinint (struct qdio_irq*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int tiqdio_remove_input_queues (struct qdio_irq*) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

int qdio_shutdown(struct ccw_device *cdev, int how)
{
 struct qdio_irq *irq_ptr = cdev->private->qdio_data;
 int rc;
 unsigned long flags;

 if (!irq_ptr)
  return -ENODEV;

 BUG_ON(irqs_disabled());
 DBF_EVENT("qshutdown:%4x", cdev->private->schid.sch_no);

 mutex_lock(&irq_ptr->setup_mutex);




 if (irq_ptr->state == QDIO_IRQ_STATE_INACTIVE) {
  mutex_unlock(&irq_ptr->setup_mutex);
  return 0;
 }





 qdio_set_state(irq_ptr, QDIO_IRQ_STATE_STOPPED);

 tiqdio_remove_input_queues(irq_ptr);
 qdio_shutdown_queues(cdev);
 qdio_shutdown_debug_entries(irq_ptr, cdev);


 spin_lock_irqsave(get_ccwdev_lock(cdev), flags);

 if (how & QDIO_FLAG_CLEANUP_USING_CLEAR)
  rc = ccw_device_clear(cdev, QDIO_DOING_CLEANUP);
 else

  rc = ccw_device_halt(cdev, QDIO_DOING_CLEANUP);
 if (rc) {
  DBF_ERROR("%4x SHUTD ERR", irq_ptr->schid.sch_no);
  DBF_ERROR("rc:%4d", rc);
  goto no_cleanup;
 }

 qdio_set_state(irq_ptr, QDIO_IRQ_STATE_CLEANUP);
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);
 wait_event_interruptible_timeout(cdev->private->wait_q,
  irq_ptr->state == QDIO_IRQ_STATE_INACTIVE ||
  irq_ptr->state == QDIO_IRQ_STATE_ERR,
  10 * HZ);
 spin_lock_irqsave(get_ccwdev_lock(cdev), flags);

no_cleanup:
 qdio_shutdown_thinint(irq_ptr);


 if ((void *)cdev->handler == (void *)qdio_int_handler)
  cdev->handler = irq_ptr->orig_handler;
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);

 qdio_set_state(irq_ptr, QDIO_IRQ_STATE_INACTIVE);
 mutex_unlock(&irq_ptr->setup_mutex);
 if (rc)
  return rc;
 return 0;
}
