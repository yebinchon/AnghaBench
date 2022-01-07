
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk {int parent; } ;


 int MXC_CRMAP_ACSR ;
 int MXC_CRMAP_ACSR_ACS ;
 int MXC_CRMAP_ACSR_ADS_OFFSET ;
 int MXC_CRMAP_ASCSR ;
 int MXC_CRMAP_ASCSR_APISEL ;
 int MXC_CRMAP_ASCSR_AP_PATDIV2_OFFSET ;
 int __raw_readl (int ) ;
 int clk_get_rate (int ) ;

__attribute__((used)) static unsigned long clk_ap_ref_get_rate(struct clk *clk)
{
 u32 ascsr, acsr;
 u8 ap_pat_ref_div_2, ap_isel, acs, ads;

 ascsr = __raw_readl(MXC_CRMAP_ASCSR);
 acsr = __raw_readl(MXC_CRMAP_ACSR);


 ap_isel = ascsr & MXC_CRMAP_ASCSR_APISEL;

 ap_pat_ref_div_2 = (ascsr >> MXC_CRMAP_ASCSR_AP_PATDIV2_OFFSET) & 0x1;

 ads = (acsr >> MXC_CRMAP_ACSR_ADS_OFFSET) & 0x1;

 acs = acsr & MXC_CRMAP_ACSR_ACS;

 if (acs & !ads)

  return clk_get_rate(clk->parent) / (ap_pat_ref_div_2 ? 2 : 1);

 return clk_get_rate(clk->parent) * (ap_isel ? 2 : 1);
}
