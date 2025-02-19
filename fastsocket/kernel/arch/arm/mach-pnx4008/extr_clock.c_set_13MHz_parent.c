
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int EINVAL ;
 struct clk ck_13MHz ;
 struct clk ck_pll1 ;
 int switch_to_clean_13mhz (struct clk*) ;
 int switch_to_dirty_13mhz (struct clk*) ;

__attribute__((used)) static int set_13MHz_parent(struct clk *clk, struct clk *parent)
{
 int ret = -EINVAL;

 if (parent == &ck_13MHz)
  ret = switch_to_clean_13mhz(clk);
 else if (parent == &ck_pll1)
  ret = switch_to_dirty_13mhz(clk);

 return ret;
}
