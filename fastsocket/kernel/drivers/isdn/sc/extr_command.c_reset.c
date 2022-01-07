
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; scalar_t__ expires; int function; } ;
struct TYPE_4__ {int devicename; int * ioport; int lock; TYPE_2__ reset_timer; scalar_t__ EngineUp; int stat_timer; } ;


 scalar_t__ CHECKRESET_TIME ;
 int ENODEV ;
 int ISDN_STAT_STOP ;
 int IS_VALID_CARD (int) ;
 size_t SFT_RESET ;
 int add_timer (TYPE_2__*) ;
 int del_timer (int *) ;
 int indicate_status (int,int ,int ,int *) ;
 int init_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int outb (int,int ) ;
 int pr_debug (char*,int) ;
 TYPE_1__** sc_adapter ;
 int sc_check_reset ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int reset(int card)
{
 unsigned long flags;

 if(!IS_VALID_CARD(card)) {
  pr_debug("Invalid param: %d is not a valid card id\n", card);
  return -ENODEV;
 }

 indicate_status(card, ISDN_STAT_STOP, 0, ((void*)0));

 if(sc_adapter[card]->EngineUp) {
  del_timer(&sc_adapter[card]->stat_timer);
 }

 sc_adapter[card]->EngineUp = 0;

 spin_lock_irqsave(&sc_adapter[card]->lock, flags);
 init_timer(&sc_adapter[card]->reset_timer);
 sc_adapter[card]->reset_timer.function = sc_check_reset;
 sc_adapter[card]->reset_timer.data = card;
 sc_adapter[card]->reset_timer.expires = jiffies + CHECKRESET_TIME;
 add_timer(&sc_adapter[card]->reset_timer);
 spin_unlock_irqrestore(&sc_adapter[card]->lock, flags);

 outb(0x1,sc_adapter[card]->ioport[SFT_RESET]);

 pr_debug("%s: Adapter Reset\n", sc_adapter[card]->devicename);
 return 0;
}
