
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int parent; } ;


 int CCM_CSCR ;
 int CCM_CSCR_USB_MASK ;
 int CCM_CSCR_USB_OFFSET ;
 int CSCR () ;
 int EINVAL ;
 int __raw_writel (int,int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static int _clk_usb_set_rate(struct clk *clk, unsigned long rate)
{
 u32 reg;
 u32 div;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 div = parent_rate / rate;
 if (div > 8 || div < 1 || ((parent_rate / div) != rate))
  return -EINVAL;
 div--;

 reg = CSCR() & ~CCM_CSCR_USB_MASK;
 reg |= div << CCM_CSCR_USB_OFFSET;
 __raw_writel(reg, CCM_CSCR);

 return 0;
}
