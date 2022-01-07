
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int outb (int ,int) ;

__attribute__((used)) static u8 opti_syscfg(u8 reg)
{
 unsigned long flags;
 u8 r;


 local_irq_save(flags);
 outb(reg, 0x22);
 r = inb(0x24);
 local_irq_restore(flags);
 return r;
}
