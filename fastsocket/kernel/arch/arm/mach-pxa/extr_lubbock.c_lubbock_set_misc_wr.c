
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int LUB_MISC_WR ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void lubbock_set_misc_wr(unsigned int mask, unsigned int set)
{
 unsigned long flags;

 local_irq_save(flags);
 LUB_MISC_WR = (LUB_MISC_WR & ~mask) | (set & mask);
 local_irq_restore(flags);
}
