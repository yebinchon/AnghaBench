
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_info {int tx_flush_wq; int lock; int tasklet; scalar_t__ resched; TYPE_1__* pub; int wlc; int isr_lock; } ;
struct TYPE_2__ {scalar_t__ up; } ;


 scalar_t__ brcms_c_dpc (int ,int) ;
 int brcms_c_intrsupd (int ) ;
 int brcms_intrson (struct brcms_info*) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 int wake_up (int *) ;

void brcms_dpc(unsigned long data)
{
 struct brcms_info *wl;

 wl = (struct brcms_info *) data;

 spin_lock_bh(&wl->lock);


 if (wl->pub->up) {
  if (wl->resched) {
   unsigned long flags;

   spin_lock_irqsave(&wl->isr_lock, flags);
   brcms_c_intrsupd(wl->wlc);
   spin_unlock_irqrestore(&wl->isr_lock, flags);
  }

  wl->resched = brcms_c_dpc(wl->wlc, 1);
 }


 if (!wl->pub->up)
  goto done;


 if (wl->resched)
  tasklet_schedule(&wl->tasklet);
 else

  brcms_intrson(wl);

 done:
 spin_unlock_bh(&wl->lock);
 wake_up(&wl->tx_flush_wq);
}
