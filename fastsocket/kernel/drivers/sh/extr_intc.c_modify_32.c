
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raw_readl (unsigned long) ;
 int __raw_writel (int ,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_field (int ,unsigned long,unsigned long) ;

__attribute__((used)) static void modify_32(unsigned long addr, unsigned long h, unsigned long data)
{
 unsigned long flags;
 local_irq_save(flags);
 __raw_writel(set_field(__raw_readl(addr), data, h), addr);
 (void)__raw_readl(addr);
 local_irq_restore(flags);
}
