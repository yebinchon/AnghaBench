
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct clk {int clk_rst; int fnclksel; } ;


 int APBC_APBCLK ;
 int APBC_FNCLK ;
 int APBC_FNCLKSEL (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void apbc_clk_enable(struct clk *clk)
{
 uint32_t clk_rst;

 clk_rst = APBC_APBCLK | APBC_FNCLK | APBC_FNCLKSEL(clk->fnclksel);
 __raw_writel(clk_rst, clk->clk_rst);
}
