
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int parent; } ;


 int MXC_CRMAP_ACDER2 ;
 int MXC_CRMAP_ACDER2_BAUD_ISEL_MASK ;
 int __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long clk_perclk_get_rate(struct clk *clk)
{
 u32 acder2;

 acder2 = __raw_readl(MXC_CRMAP_ACDER2);
 if (acder2 & MXC_CRMAP_ACDER2_BAUD_ISEL_MASK)
  return 2 * clk_get_rate(clk->parent);

 return clk_get_rate(clk->parent);
}
