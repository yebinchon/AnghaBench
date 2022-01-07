
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtm_timer {int gtevr; int gtcfr; struct gtm* gtm; } ;
struct gtm {int lock; struct gtm_timer* timers; } ;


 int GTCFR_STP (int) ;
 int out_be16 (int ,int) ;
 int setbits8 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void gtm_stop_timer16(struct gtm_timer *tmr)
{
 struct gtm *gtm = tmr->gtm;
 int num = tmr - &gtm->timers[0];
 unsigned long flags;

 spin_lock_irqsave(&gtm->lock, flags);

 setbits8(tmr->gtcfr, GTCFR_STP(num));
 out_be16(tmr->gtevr, 0xFFFF);

 spin_unlock_irqrestore(&gtm->lock, flags);
}
