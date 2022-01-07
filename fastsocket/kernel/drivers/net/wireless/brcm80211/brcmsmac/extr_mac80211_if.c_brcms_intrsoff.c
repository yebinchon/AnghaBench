
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_info {int isr_lock; int wlc; } ;


 int brcms_c_intrsoff (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 brcms_intrsoff(struct brcms_info *wl)
{
 unsigned long flags;
 u32 status;

 spin_lock_irqsave(&wl->isr_lock, flags);
 status = brcms_c_intrsoff(wl->wlc);
 spin_unlock_irqrestore(&wl->isr_lock, flags);
 return status;
}
