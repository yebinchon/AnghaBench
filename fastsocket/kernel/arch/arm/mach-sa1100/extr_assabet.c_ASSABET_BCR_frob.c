
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ASSABET_BCR ;
 unsigned int BCR_value ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void ASSABET_BCR_frob(unsigned int mask, unsigned int val)
{
 unsigned long flags;

 local_irq_save(flags);
 BCR_value = (BCR_value & ~mask) | val;
 ASSABET_BCR = BCR_value;
 local_irq_restore(flags);
}
