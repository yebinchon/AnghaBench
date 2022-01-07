
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_reg_init {unsigned long mask; unsigned long set; } ;
struct sm501_devdata {scalar_t__ regs; } ;


 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void sm501_init_reg(struct sm501_devdata *sm,
      unsigned long reg,
      struct sm501_reg_init *r)
{
 unsigned long tmp;

 tmp = readl(sm->regs + reg);
 tmp &= ~r->mask;
 tmp |= r->set;
 writel(tmp, sm->regs + reg);
}
