
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int MXC_CCM_PDR1_SSI1_PODF_MASK ;
 int MXC_CCM_PDR1_SSI1_PODF_OFFSET ;
 int MXC_CCM_PDR1_SSI1_PRE_PODF_MASK ;
 int MXC_CCM_PDR1_SSI1_PRE_PODF_OFFSET ;
 unsigned long PDR1 (int ,int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long ssi1_get_rate(struct clk *clk)
{
 unsigned long ssi1_pdf, ssi1_prepdf;

 ssi1_pdf = PDR1(MXC_CCM_PDR1_SSI1_PODF_MASK,
   MXC_CCM_PDR1_SSI1_PODF_OFFSET);
 ssi1_prepdf = PDR1(MXC_CCM_PDR1_SSI1_PRE_PODF_MASK,
      MXC_CCM_PDR1_SSI1_PRE_PODF_OFFSET);
 return clk_get_rate(clk->parent) / (ssi1_prepdf + 1) / (ssi1_pdf + 1);
}
