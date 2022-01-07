
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct set_schib_struct {int mbfc; unsigned long address; int ret; int kref; int wait; int mme; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {scalar_t__ state; struct set_schib_struct* cmb_wait; int cmb; } ;


 int CMF_PENDING ;
 scalar_t__ DEV_STATE_CMFCHANGE ;
 scalar_t__ DEV_STATE_ONLINE ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_ATOMIC ;
 int cmf_set_schib_release ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct set_schib_struct* kzalloc (int,int ) ;
 int set_schib (struct ccw_device*,int ,int,unsigned long) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 scalar_t__ wait_event_interruptible (int ,int) ;

__attribute__((used)) static int set_schib_wait(struct ccw_device *cdev, u32 mme,
    int mbfc, unsigned long address)
{
 struct set_schib_struct *set_data;
 int ret;

 spin_lock_irq(cdev->ccwlock);
 if (!cdev->private->cmb) {
  ret = -ENODEV;
  goto out;
 }
 set_data = kzalloc(sizeof(struct set_schib_struct), GFP_ATOMIC);
 if (!set_data) {
  ret = -ENOMEM;
  goto out;
 }
 init_waitqueue_head(&set_data->wait);
 kref_init(&set_data->kref);
 set_data->mme = mme;
 set_data->mbfc = mbfc;
 set_data->address = address;

 ret = set_schib(cdev, mme, mbfc, address);
 if (ret != -EBUSY)
  goto out_put;

 if (cdev->private->state != DEV_STATE_ONLINE) {

  ret = -EBUSY;
  goto out_put;
 }

 cdev->private->state = DEV_STATE_CMFCHANGE;
 set_data->ret = CMF_PENDING;
 cdev->private->cmb_wait = set_data;

 spin_unlock_irq(cdev->ccwlock);
 if (wait_event_interruptible(set_data->wait,
         set_data->ret != CMF_PENDING)) {
  spin_lock_irq(cdev->ccwlock);
  if (set_data->ret == CMF_PENDING) {
   set_data->ret = -ERESTARTSYS;
   if (cdev->private->state == DEV_STATE_CMFCHANGE)
    cdev->private->state = DEV_STATE_ONLINE;
  }
  spin_unlock_irq(cdev->ccwlock);
 }
 spin_lock_irq(cdev->ccwlock);
 cdev->private->cmb_wait = ((void*)0);
 ret = set_data->ret;
out_put:
 kref_put(&set_data->kref, cmf_set_schib_release);
out:
 spin_unlock_irq(cdev->ccwlock);
 return ret;
}
