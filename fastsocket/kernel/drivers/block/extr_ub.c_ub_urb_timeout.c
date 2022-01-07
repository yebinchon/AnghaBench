
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_dev {int lock; int work_urb; int work_done; } ;


 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ub_is_completed (int *) ;
 int usb_unlink_urb (int *) ;

__attribute__((used)) static void ub_urb_timeout(unsigned long arg)
{
 struct ub_dev *sc = (struct ub_dev *) arg;
 unsigned long flags;

 spin_lock_irqsave(sc->lock, flags);
 if (!ub_is_completed(&sc->work_done))
  usb_unlink_urb(&sc->work_urb);
 spin_unlock_irqrestore(sc->lock, flags);
}
