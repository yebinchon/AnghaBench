
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HSR0_CBM ;
 unsigned long HSR0_DCE ;
 unsigned long __get_HSR (int ) ;
 int __set_HSR (int ,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void frv_change_dcache_mode(unsigned long newmode)
{
 unsigned long flags, hsr0;

 local_irq_save(flags);

 hsr0 = __get_HSR(0);
 hsr0 &= ~HSR0_DCE;
 __set_HSR(0, hsr0);

 asm volatile("	dcef	@(gr0,gr0),#1	\n"
       "	membar			\n"
       : : : "memory"
       );

 hsr0 = (hsr0 & ~HSR0_CBM) | newmode;
 __set_HSR(0, hsr0);
 hsr0 |= HSR0_DCE;
 __set_HSR(0, hsr0);

 local_irq_restore(flags);


}
