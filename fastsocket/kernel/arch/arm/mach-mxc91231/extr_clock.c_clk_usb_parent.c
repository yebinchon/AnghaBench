
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk {int dummy; } ;


 int MXC_CRMAP_ACSR ;
 int MXC_CRMAP_ACSR_ACS ;
 int MXC_CRMAP_ASCSR ;
 int MXC_CRMAP_ASCSR_USBSEL_MASK ;
 int MXC_CRMAP_ASCSR_USBSEL_OFFSET ;
 int __raw_readl (int ) ;
 struct clk ap_ref_clk ;
 struct clk* pll_clk (int) ;

__attribute__((used)) static struct clk *clk_usb_parent(struct clk *clk)
{
 u32 acsr, ascsr;

 acsr = __raw_readl(MXC_CRMAP_ACSR);
 ascsr = __raw_readl(MXC_CRMAP_ASCSR);

 if (acsr & MXC_CRMAP_ACSR_ACS) {
  u8 sel;
  sel = (ascsr & MXC_CRMAP_ASCSR_USBSEL_MASK) >>
   MXC_CRMAP_ASCSR_USBSEL_OFFSET;
  return pll_clk(sel);
 }
 return &ap_ref_clk;
}
