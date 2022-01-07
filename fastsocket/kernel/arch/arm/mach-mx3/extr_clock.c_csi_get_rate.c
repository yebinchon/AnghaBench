
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk {int parent; } ;


 int MXC_CCM_PDR0 ;
 unsigned long MXC_CCM_PDR0_CSI_PODF_MASK ;
 unsigned long MXC_CCM_PDR0_CSI_PODF_OFFSET ;
 unsigned long MXC_CCM_PDR0_CSI_PRDF_MASK ;
 unsigned long MXC_CCM_PDR0_CSI_PRDF_OFFSET ;
 unsigned long __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long csi_get_rate(struct clk *clk)
{
 u32 reg, pre, post;

 reg = __raw_readl(MXC_CCM_PDR0);
 pre = (reg & MXC_CCM_PDR0_CSI_PRDF_MASK) >>
     MXC_CCM_PDR0_CSI_PRDF_OFFSET;
 pre++;
 post = (reg & MXC_CCM_PDR0_CSI_PODF_MASK) >>
     MXC_CCM_PDR0_CSI_PODF_OFFSET;
 post++;
 return clk_get_rate(clk->parent) / (pre * post);
}
