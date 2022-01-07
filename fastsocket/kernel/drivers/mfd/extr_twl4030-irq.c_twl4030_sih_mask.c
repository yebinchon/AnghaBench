
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sih_agent {unsigned int irq_base; int imr_change_pending; int mask_work; int imr; } ;


 int BIT (unsigned int) ;
 struct sih_agent* get_irq_chip_data (unsigned int) ;
 int queue_work (int ,int *) ;
 int sih_agent_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wq ;

__attribute__((used)) static void twl4030_sih_mask(unsigned irq)
{
 struct sih_agent *sih = get_irq_chip_data(irq);
 unsigned long flags;

 spin_lock_irqsave(&sih_agent_lock, flags);
 sih->imr |= BIT(irq - sih->irq_base);
 sih->imr_change_pending = 1;
 queue_work(wq, &sih->mask_work);
 spin_unlock_irqrestore(&sih_agent_lock, flags);
}
