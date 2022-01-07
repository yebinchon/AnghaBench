
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* statcallb ) (TYPE_3__*) ;} ;
struct TYPE_7__ {int flags; int isdnloop_lock; TYPE_1__ interface; int myid; int * c_timer; int rb_timer; int st_timer; } ;
typedef TYPE_2__ isdnloop_card ;
struct TYPE_8__ {int driver; int command; } ;
typedef TYPE_3__ isdn_ctrl ;


 int ISDNLOOP_FLAGS_RUNNING ;
 int ISDN_STAT_STOP ;
 int del_timer (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void
isdnloop_stopcard(isdnloop_card * card)
{
 unsigned long flags;
 isdn_ctrl cmd;

 spin_lock_irqsave(&card->isdnloop_lock, flags);
 if (card->flags & ISDNLOOP_FLAGS_RUNNING) {
  card->flags &= ~ISDNLOOP_FLAGS_RUNNING;
  del_timer(&card->st_timer);
  del_timer(&card->rb_timer);
  del_timer(&card->c_timer[0]);
  del_timer(&card->c_timer[1]);
  cmd.command = ISDN_STAT_STOP;
  cmd.driver = card->myid;
  card->interface.statcallb(&cmd);
 }
 spin_unlock_irqrestore(&card->isdnloop_lock, flags);
}
