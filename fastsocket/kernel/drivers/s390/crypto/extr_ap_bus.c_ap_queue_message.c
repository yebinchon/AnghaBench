
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_message {int (* receive ) (struct ap_device*,struct ap_message*,int ) ;} ;
struct ap_device {int unregistered; int device; int lock; } ;


 int BUG_ON (int) ;
 int ENODEV ;
 int ERR_PTR (int) ;
 int __ap_queue_message (struct ap_device*,struct ap_message*) ;
 int ap_poll_queue (struct ap_device*,unsigned long*) ;
 int ap_poll_wait ;
 int device_unregister (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ap_device*,struct ap_message*,int ) ;
 int wake_up (int *) ;

void ap_queue_message(struct ap_device *ap_dev, struct ap_message *ap_msg)
{
 unsigned long flags;
 int rc;



 BUG_ON(!ap_msg->receive);

 spin_lock_bh(&ap_dev->lock);
 if (!ap_dev->unregistered) {

  rc = ap_poll_queue(ap_dev, &flags);
  if (!rc)
   rc = __ap_queue_message(ap_dev, ap_msg);
  if (!rc)
   wake_up(&ap_poll_wait);
  if (rc == -ENODEV)
   ap_dev->unregistered = 1;
 } else {
  ap_msg->receive(ap_dev, ap_msg, ERR_PTR(-ENODEV));
  rc = -ENODEV;
 }
 spin_unlock_bh(&ap_dev->lock);
 if (rc == -ENODEV)
  device_unregister(&ap_dev->device);
}
