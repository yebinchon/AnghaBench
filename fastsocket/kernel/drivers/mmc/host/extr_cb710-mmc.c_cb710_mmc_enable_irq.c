
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {int irq_lock; } ;


 int __cb710_mmc_enable_irq (struct cb710_slot*,unsigned short,unsigned short) ;
 int cb710_slot_to_mmc (struct cb710_slot*) ;
 struct cb710_mmc_reader* mmc_priv (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cb710_mmc_enable_irq(struct cb710_slot *slot,
 unsigned short enable, unsigned short mask)
{
 struct cb710_mmc_reader *reader = mmc_priv(cb710_slot_to_mmc(slot));
 unsigned long flags;

 spin_lock_irqsave(&reader->irq_lock, flags);

 __cb710_mmc_enable_irq(slot, enable, mask);
 spin_unlock_irqrestore(&reader->irq_lock, flags);
}
