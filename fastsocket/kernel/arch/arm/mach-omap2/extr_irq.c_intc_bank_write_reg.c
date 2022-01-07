
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct omap_irq_bank {scalar_t__ base_reg; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static void intc_bank_write_reg(u32 val, struct omap_irq_bank *bank, u16 reg)
{
 __raw_writel(val, bank->base_reg + reg);
}
