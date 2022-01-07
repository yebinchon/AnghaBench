
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int isdnloop_lock; int * c_timer; } ;
typedef TYPE_1__ isdnloop_card ;


 int del_timer (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
isdnloop_kill_ctimer(isdnloop_card * card, int ch)
{
 unsigned long flags;

 spin_lock_irqsave(&card->isdnloop_lock, flags);
 del_timer(&card->c_timer[ch]);
 spin_unlock_irqrestore(&card->isdnloop_lock, flags);
}
