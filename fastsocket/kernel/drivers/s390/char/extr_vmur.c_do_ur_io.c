
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urdev {int io_mutex; int * io_done; struct ccw_device* cdev; } ;
struct ccw_device {int dummy; } ;
struct ccw1 {int dummy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int TRACE (char*,...) ;
 int ccw_device_start (struct ccw_device*,struct ccw1*,int,int ,int ) ;
 int event ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int do_ur_io(struct urdev *urd, struct ccw1 *cpa)
{
 int rc;
 struct ccw_device *cdev = urd->cdev;
 DECLARE_COMPLETION_ONSTACK(event);

 TRACE("do_ur_io: cpa=%p\n", cpa);

 rc = mutex_lock_interruptible(&urd->io_mutex);
 if (rc)
  return rc;

 urd->io_done = &event;

 spin_lock_irq(get_ccwdev_lock(cdev));
 rc = ccw_device_start(cdev, cpa, 1, 0, 0);
 spin_unlock_irq(get_ccwdev_lock(cdev));

 TRACE("do_ur_io: ccw_device_start returned %d\n", rc);
 if (rc)
  goto out;

 wait_for_completion(&event);
 TRACE("do_ur_io: I/O complete\n");
 rc = 0;

out:
 mutex_unlock(&urd->io_mutex);
 return rc;
}
