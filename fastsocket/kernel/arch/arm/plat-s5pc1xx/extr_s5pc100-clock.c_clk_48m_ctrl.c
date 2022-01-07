
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 int S5PC100_CLKSRC1_CLK48M_MASK ;
 int S5PC1XX_CLK_SRC1 ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int clk_48m_ctrl(struct clk *clk, int enable)
{
 unsigned long flags;
 u32 val;


 local_irq_save(flags);

 val = __raw_readl(S5PC1XX_CLK_SRC1);
 if (enable)
  val |= S5PC100_CLKSRC1_CLK48M_MASK;
 else
  val &= ~S5PC100_CLKSRC1_CLK48M_MASK;

 __raw_writel(val, S5PC1XX_CLK_SRC1);
 local_irq_restore(flags);

 return 0;
}
