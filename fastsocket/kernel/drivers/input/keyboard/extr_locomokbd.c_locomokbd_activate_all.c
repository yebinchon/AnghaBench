
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LOCOMO_KIC ;
 scalar_t__ LOCOMO_KSC ;
 unsigned long locomo_readl (scalar_t__) ;
 int locomo_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void locomokbd_activate_all(unsigned long membase)
{
 unsigned long r;

 locomo_writel(0, membase + LOCOMO_KSC);
 r = locomo_readl(membase + LOCOMO_KIC);
 r &= 0xFEFF;
 locomo_writel(r, membase + LOCOMO_KIC);
}
