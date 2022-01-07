
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int sch_no; } ;
struct TYPE_10__ {scalar_t__ cda; int count; int flags; int cmd_code; } ;
struct TYPE_8__ {int count; int cmd; } ;
struct qdio_irq {int state; int setup_mutex; TYPE_4__ schid; TYPE_5__ ccw; TYPE_3__ aqueue; } ;
struct ccw_device {TYPE_2__* private; } ;
struct TYPE_6__ {int sch_no; } ;
struct TYPE_7__ {scalar_t__ state; struct qdio_irq* qdio_data; TYPE_1__ schid; } ;


 int CCWDEV_REPORT_ALL ;
 int CCW_FLAG_SLI ;
 int DBF_ERROR (char*,int) ;
 int DBF_EVENT (char*,int ) ;
 scalar_t__ DEV_STATE_ONLINE ;
 int DOIO_DENY_PREFETCH ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int QDIO_DOING_ACTIVATE ;
 int QDIO_IRQ_STATE_ACTIVE ;

 int QDIO_IRQ_STATE_INACTIVE ;

 int ccw_device_set_options (struct ccw_device*,int ) ;
 int ccw_device_start (struct ccw_device*,TYPE_5__*,int ,int ,int ) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 scalar_t__ is_thinint_irq (struct qdio_irq*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qdio_set_state (struct qdio_irq*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int tiqdio_add_input_queues (struct qdio_irq*) ;

int qdio_activate(struct ccw_device *cdev)
{
 struct qdio_irq *irq_ptr;
 int rc;
 unsigned long saveflags;

 DBF_EVENT("qactivate:%4x", cdev->private->schid.sch_no);

 irq_ptr = cdev->private->qdio_data;
 if (!irq_ptr)
  return -ENODEV;

 if (cdev->private->state != DEV_STATE_ONLINE)
  return -EINVAL;

 mutex_lock(&irq_ptr->setup_mutex);
 if (irq_ptr->state == QDIO_IRQ_STATE_INACTIVE) {
  rc = -EBUSY;
  goto out;
 }

 irq_ptr->ccw.cmd_code = irq_ptr->aqueue.cmd;
 irq_ptr->ccw.flags = CCW_FLAG_SLI;
 irq_ptr->ccw.count = irq_ptr->aqueue.count;
 irq_ptr->ccw.cda = 0;

 spin_lock_irqsave(get_ccwdev_lock(cdev), saveflags);
 ccw_device_set_options(cdev, CCWDEV_REPORT_ALL);

 rc = ccw_device_start(cdev, &irq_ptr->ccw, QDIO_DOING_ACTIVATE,
         0, DOIO_DENY_PREFETCH);
 if (rc) {
  DBF_ERROR("%4x act IO ERR", irq_ptr->schid.sch_no);
  DBF_ERROR("rc:%4x", rc);
 }
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), saveflags);

 if (rc)
  goto out;

 if (is_thinint_irq(irq_ptr))
  tiqdio_add_input_queues(irq_ptr);


 msleep(5);

 switch (irq_ptr->state) {
 case 128:
 case 129:
  rc = -EIO;
  break;
 default:
  qdio_set_state(irq_ptr, QDIO_IRQ_STATE_ACTIVE);
  rc = 0;
 }
out:
 mutex_unlock(&irq_ptr->setup_mutex);
 return rc;
}
