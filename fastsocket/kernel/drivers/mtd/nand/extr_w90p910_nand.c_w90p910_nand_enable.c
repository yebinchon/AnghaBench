
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_nand {int lock; scalar_t__ reg; } ;


 unsigned int BUSWID ;
 unsigned int DMARWEN ;
 unsigned int ECC4EN ;
 unsigned int NANDCS ;
 unsigned int NAND_EN ;
 unsigned int PSIZE ;
 scalar_t__ REG_FMICSR ;
 scalar_t__ REG_SMCSR ;
 unsigned int RESET_FMI ;
 unsigned int SWRST ;
 unsigned int WP ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void w90p910_nand_enable(struct w90p910_nand *nand)
{
 unsigned int val;
 spin_lock(&nand->lock);
 __raw_writel(RESET_FMI, (nand->reg + REG_FMICSR));

 val = __raw_readl(nand->reg + REG_FMICSR);

 if (!(val & NAND_EN))
  __raw_writel(val | NAND_EN, REG_FMICSR);

 val = __raw_readl(nand->reg + REG_SMCSR);

 val &= ~(SWRST|PSIZE|DMARWEN|BUSWID|ECC4EN|NANDCS);
 val |= WP;

 __raw_writel(val, nand->reg + REG_SMCSR);

 spin_unlock(&nand->lock);
}
