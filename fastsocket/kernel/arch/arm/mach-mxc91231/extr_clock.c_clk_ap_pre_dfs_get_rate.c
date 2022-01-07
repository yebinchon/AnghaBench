
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk {int dummy; } ;


 int ARMDIV ;
 unsigned long CRM_SMALL_DIVIDER (int ,int ) ;
 int MXC_CRMAP_ACDR ;
 int MXC_CRMAP_ACSR ;
 int MXC_CRMAP_ACSR_ACS ;
 int MXC_CRMAP_ASCSR ;
 int MXC_CRMAP_ASCSR_APSEL_MASK ;
 int MXC_CRMAP_ASCSR_APSEL_OFFSET ;
 int __raw_readl (int ) ;
 int ap_ref_clk ;
 unsigned long clk_get_rate (int *) ;
 int * pll_clk (int) ;

__attribute__((used)) static unsigned long clk_ap_pre_dfs_get_rate(struct clk *clk)
{
 u32 acsr, ascsr;

 acsr = __raw_readl(MXC_CRMAP_ACSR);
 ascsr = __raw_readl(MXC_CRMAP_ASCSR);

 if (acsr & MXC_CRMAP_ACSR_ACS) {
  u8 sel;
  sel = (ascsr & MXC_CRMAP_ASCSR_APSEL_MASK) >>
   MXC_CRMAP_ASCSR_APSEL_OFFSET;
  return clk_get_rate(pll_clk(sel)) /
   CRM_SMALL_DIVIDER(MXC_CRMAP_ACDR, ARMDIV);
 }
 return clk_get_rate(&ap_ref_clk);
}
