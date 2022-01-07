
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int AHBDIV ;
 unsigned long CRM_16DIVIDER (int ,int ) ;
 int MXC_CRMAP_ACDR ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long clk_ahb_get_rate(struct clk *clk)
{
 return clk_get_rate(clk->parent) /
  CRM_16DIVIDER(MXC_CRMAP_ACDR, AHBDIV);
}
