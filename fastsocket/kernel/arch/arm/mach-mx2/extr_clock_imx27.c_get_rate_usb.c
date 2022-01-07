
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int CCM_CSCR ;
 int __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long get_rate_usb(struct clk *clk)
{
 unsigned long usb_pdf;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 usb_pdf = (__raw_readl(CCM_CSCR) >> 28) & 0x7;

 return parent_rate / (usb_pdf + 1U);
}
