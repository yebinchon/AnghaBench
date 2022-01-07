
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct omap_irq_bank {scalar_t__ base_reg; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 intc_bank_read_reg(struct omap_irq_bank *bank, u16 reg)
{
 return __raw_readl(bank->base_reg + reg);
}
