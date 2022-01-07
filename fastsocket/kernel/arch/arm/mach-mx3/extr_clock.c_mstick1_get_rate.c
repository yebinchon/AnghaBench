
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int MXC_CCM_PDR2_MST1_PDF_MASK ;
 int MXC_CCM_PDR2_MST1_PDF_OFFSET ;
 unsigned long PDR2 (int ,int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long mstick1_get_rate(struct clk *clk)
{
 unsigned long msti_pdf;

 msti_pdf = PDR2(MXC_CCM_PDR2_MST1_PDF_MASK,
   MXC_CCM_PDR2_MST1_PDF_OFFSET);
 return clk_get_rate(clk->parent) / (msti_pdf + 1);
}
