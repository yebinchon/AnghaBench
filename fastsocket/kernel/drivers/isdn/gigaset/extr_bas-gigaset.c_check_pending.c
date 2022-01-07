
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bas_cardstate {int pending; int basstate; int lock; int timer_ctrl; TYPE_1__* interface; } ;
struct TYPE_2__ {int dev; } ;


 int BS_ATOPEN ;
 int BS_B1OPEN ;
 int BS_B2OPEN ;
 int BS_RESETTING ;
 int del_timer (int *) ;
 int dev_warn (int *,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void check_pending(struct bas_cardstate *ucs)
{
 unsigned long flags;

 spin_lock_irqsave(&ucs->lock, flags);
 switch (ucs->pending) {
 case 0:
  break;
 case 131:
  if (ucs->basstate & BS_ATOPEN)
   ucs->pending = 0;
  break;
 case 130:
  if (ucs->basstate & BS_B1OPEN)
   ucs->pending = 0;
  break;
 case 129:
  if (ucs->basstate & BS_B2OPEN)
   ucs->pending = 0;
  break;
 case 135:
  if (!(ucs->basstate & BS_ATOPEN))
   ucs->pending = 0;
  break;
 case 134:
  if (!(ucs->basstate & BS_B1OPEN))
   ucs->pending = 0;
  break;
 case 133:
  if (!(ucs->basstate & BS_B2OPEN))
   ucs->pending = 0;
  break;
 case 132:
  ucs->pending = 0;
  break;
 case 128:
  if (!(ucs->basstate & BS_RESETTING))
   ucs->pending = 0;
  break;




 default:
  dev_warn(&ucs->interface->dev,
    "unknown pending request 0x%02x cleared\n",
    ucs->pending);
  ucs->pending = 0;
 }

 if (!ucs->pending)
  del_timer(&ucs->timer_ctrl);

 spin_unlock_irqrestore(&ucs->lock, flags);
}
