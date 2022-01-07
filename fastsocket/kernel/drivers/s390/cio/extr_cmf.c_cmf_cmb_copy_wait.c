
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct copy_block_struct {int ret; int kref; int wait; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {scalar_t__ state; struct copy_block_struct* cmb_wait; int cmb; } ;


 int CMF_PENDING ;
 scalar_t__ DEV_STATE_CMFUPDATE ;
 scalar_t__ DEV_STATE_ONLINE ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_ATOMIC ;
 int cmf_copy_block (struct ccw_device*) ;
 int cmf_copy_block_release ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct copy_block_struct* kzalloc (int,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ wait_event_interruptible (int ,int) ;

__attribute__((used)) static int cmf_cmb_copy_wait(struct ccw_device *cdev)
{
 struct copy_block_struct *copy_block;
 int ret;
 unsigned long flags;

 spin_lock_irqsave(cdev->ccwlock, flags);
 if (!cdev->private->cmb) {
  ret = -ENODEV;
  goto out;
 }
 copy_block = kzalloc(sizeof(struct copy_block_struct), GFP_ATOMIC);
 if (!copy_block) {
  ret = -ENOMEM;
  goto out;
 }
 init_waitqueue_head(&copy_block->wait);
 kref_init(&copy_block->kref);

 ret = cmf_copy_block(cdev);
 if (ret != -EBUSY)
  goto out_put;

 if (cdev->private->state != DEV_STATE_ONLINE) {
  ret = -EBUSY;
  goto out_put;
 }

 cdev->private->state = DEV_STATE_CMFUPDATE;
 copy_block->ret = CMF_PENDING;
 cdev->private->cmb_wait = copy_block;

 spin_unlock_irqrestore(cdev->ccwlock, flags);
 if (wait_event_interruptible(copy_block->wait,
         copy_block->ret != CMF_PENDING)) {
  spin_lock_irqsave(cdev->ccwlock, flags);
  if (copy_block->ret == CMF_PENDING) {
   copy_block->ret = -ERESTARTSYS;
   if (cdev->private->state == DEV_STATE_CMFUPDATE)
    cdev->private->state = DEV_STATE_ONLINE;
  }
  spin_unlock_irqrestore(cdev->ccwlock, flags);
 }
 spin_lock_irqsave(cdev->ccwlock, flags);
 cdev->private->cmb_wait = ((void*)0);
 ret = copy_block->ret;
out_put:
 kref_put(&copy_block->kref, cmf_copy_block_release);
out:
 spin_unlock_irqrestore(cdev->ccwlock, flags);
 return ret;
}
