
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long CCM_CSCR_IPDIV ;
 unsigned long CCM_CSCR_IPDIV_OFFSET ;
 unsigned long CSCR () ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long get_ipg_clk(struct clk *clk)
{
 unsigned long rate;
 unsigned long ipg_pdf;

 ipg_pdf = (CSCR() & CCM_CSCR_IPDIV) >> CCM_CSCR_IPDIV_OFFSET;

 rate = clk_get_rate(clk->parent);
 return rate / (ipg_pdf + 1);
}
