
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct w6692_hw {int irq; int name; int irqcnt; int lock; } ;


 int DEBUG_HW ;
 int EIO ;
 int IRQF_SHARED ;
 int debug ;
 int disable_hwirq (struct w6692_hw*) ;
 int enable_hwirq (struct w6692_hw*) ;
 int free_irq (int ,struct w6692_hw*) ;
 int initW6692 (struct w6692_hw*) ;
 int msleep_interruptible (int) ;
 int pr_info (char*,int ,int ,...) ;
 int pr_notice (char*,int ,int ,int ) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct w6692_hw*) ;
 int reset_w6692 (struct w6692_hw*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int w6692_irq ;

__attribute__((used)) static int
init_card(struct w6692_hw *card)
{
 int cnt = 3;
 u_long flags;

 spin_lock_irqsave(&card->lock, flags);
 disable_hwirq(card);
 spin_unlock_irqrestore(&card->lock, flags);
 if (request_irq(card->irq, w6692_irq, IRQF_SHARED, card->name, card)) {
  pr_info("%s: couldn't get interrupt %d\n", card->name,
   card->irq);
  return -EIO;
 }
 while (cnt--) {
  spin_lock_irqsave(&card->lock, flags);
  initW6692(card);
  enable_hwirq(card);
  spin_unlock_irqrestore(&card->lock, flags);

  msleep_interruptible(10);
  if (debug & DEBUG_HW)
   pr_notice("%s: IRQ %d count %d\n", card->name,
    card->irq, card->irqcnt);
  if (!card->irqcnt) {
   pr_info("%s: IRQ(%d) getting no IRQs during init %d\n",
    card->name, card->irq, 3 - cnt);
   reset_w6692(card);
  } else
   return 0;
 }
 free_irq(card->irq, card);
 return -EIO;
}
