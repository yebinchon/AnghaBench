
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int parent; } ;


 int CCM_CSCR_PRESC_MASK ;
 int CCM_CSCR_PRESC_OFFSET ;
 int CSCR () ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long _clk_fclk_get_rate(struct clk *clk)
{
 unsigned long parent_rate;
 u32 div;

 div = (CSCR() & CCM_CSCR_PRESC_MASK) >> CCM_CSCR_PRESC_OFFSET;
 parent_rate = clk_get_rate(clk->parent);

 return parent_rate / (div+1);
}
