
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_device {int lock; } ;


 int __ap_flush_queue (struct ap_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ap_flush_queue(struct ap_device *ap_dev)
{
 spin_lock_bh(&ap_dev->lock);
 __ap_flush_queue(ap_dev);
 spin_unlock_bh(&ap_dev->lock);
}
