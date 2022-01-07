
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raw_readb (unsigned long) ;
 int __raw_writeb (int ,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_field (int ,unsigned long,unsigned long) ;

__attribute__((used)) static void modify_8(unsigned long addr, unsigned long h, unsigned long data)
{
 unsigned long flags;
 local_irq_save(flags);
 __raw_writeb(set_field(__raw_readb(addr), data, h), addr);
 (void)__raw_readb(addr);
 local_irq_restore(flags);
}
