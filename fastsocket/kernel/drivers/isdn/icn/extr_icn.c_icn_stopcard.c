
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int driver; int command; } ;
typedef TYPE_2__ isdn_ctrl ;
struct TYPE_6__ {int (* statcallb ) (TYPE_2__*) ;} ;
struct TYPE_8__ {int flags; int lock; struct TYPE_8__* other; scalar_t__ doubleS0; TYPE_1__ interface; int myid; int rb_timer; int st_timer; } ;
typedef TYPE_3__ icn_card ;


 int ICN_FLAGS_RUNNING ;
 int ISDN_STAT_STOP ;
 int del_timer (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
icn_stopcard(icn_card * card)
{
 unsigned long flags;
 isdn_ctrl cmd;

 spin_lock_irqsave(&card->lock, flags);
 if (card->flags & ICN_FLAGS_RUNNING) {
  card->flags &= ~ICN_FLAGS_RUNNING;
  del_timer(&card->st_timer);
  del_timer(&card->rb_timer);
  spin_unlock_irqrestore(&card->lock, flags);
  cmd.command = ISDN_STAT_STOP;
  cmd.driver = card->myid;
  card->interface.statcallb(&cmd);
  if (card->doubleS0)
   icn_stopcard(card->other);
 } else
  spin_unlock_irqrestore(&card->lock, flags);
}
