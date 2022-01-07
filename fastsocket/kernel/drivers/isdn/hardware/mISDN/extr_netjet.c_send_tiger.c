
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct tiger_hw {int last_is0; TYPE_2__* bc; int name; } ;
struct TYPE_3__ {int Flags; } ;
struct TYPE_4__ {TYPE_1__ bch; } ;


 int FLG_ACTIVE ;
 int NJ_IRQM0_RD_MASK ;
 int pr_info (char*,int ,int,int) ;
 int send_tiger_bc (struct tiger_hw*,TYPE_2__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
send_tiger(struct tiger_hw *card, u8 irq_stat)
{
 int i;


 if ((irq_stat & card->last_is0) & NJ_IRQM0_RD_MASK) {
  pr_info("%s: tiger warn write double dma %x/%x\n",
   card->name, irq_stat, card->last_is0);
  return;
 } else {
  card->last_is0 &= ~NJ_IRQM0_RD_MASK;
  card->last_is0 |= (irq_stat & NJ_IRQM0_RD_MASK);
 }
 for (i = 0; i < 2; i++) {
  if (test_bit(FLG_ACTIVE, &card->bc[i].bch.Flags))
   send_tiger_bc(card, &card->bc[i]);
 }
}
