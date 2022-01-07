
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long CCM_CSCR_BCLK_MASK ;
 unsigned long CCM_CSCR_BCLK_OFFSET ;
 unsigned long CSCR () ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long get_hclk_clk(struct clk *clk)
{
 unsigned long rate;
 unsigned long bclk_pdf;

 bclk_pdf = (CSCR() & CCM_CSCR_BCLK_MASK)
  >> CCM_CSCR_BCLK_OFFSET;

 rate = clk_get_rate(clk->parent);
 return rate / (bclk_pdf + 1);
}
