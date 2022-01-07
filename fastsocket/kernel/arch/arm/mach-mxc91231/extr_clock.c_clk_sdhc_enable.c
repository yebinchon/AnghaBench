
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int id; } ;


 int MXC_CRMAP_AMLPMRE1 ;
 int MXC_CRMAP_AMLPMRE1_MLPME4_OFFSET ;
 int MXC_CRMAP_AMLPMRE1_MLPME5_OFFSET ;
 int MXC_CRMAP_APRB ;
 int MXC_CRMAP_APRB_SDHC1EN_OFFSET ;
 int MXC_CRMAP_APRB_SDHC2EN_OFFSET ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static int clk_sdhc_enable(struct clk *clk)
{
 u32 amlpmre1, aprb;

 amlpmre1 = __raw_readl(MXC_CRMAP_AMLPMRE1);
 aprb = __raw_readl(MXC_CRMAP_APRB);
 switch (clk->id) {
 case 0:
  amlpmre1 |= (0x7 << MXC_CRMAP_AMLPMRE1_MLPME4_OFFSET);
  aprb |= (0x1 << MXC_CRMAP_APRB_SDHC1EN_OFFSET);
  break;
 case 1:
  amlpmre1 |= (0x7 << MXC_CRMAP_AMLPMRE1_MLPME5_OFFSET);
  aprb |= (0x1 << MXC_CRMAP_APRB_SDHC2EN_OFFSET);
  break;
 }
 __raw_writel(amlpmre1, MXC_CRMAP_AMLPMRE1);
 __raw_writel(aprb, MXC_CRMAP_APRB);
 return 0;
}
