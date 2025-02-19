
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int MXC_CCM_PDR0_HSP_PODF_MASK ;
 int MXC_CCM_PDR0_HSP_PODF_OFFSET ;
 unsigned long PDR0 (int ,int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long hsp_get_rate(struct clk *clk)
{
 unsigned long hsp_pdf;

 hsp_pdf = PDR0(MXC_CCM_PDR0_HSP_PODF_MASK,
         MXC_CCM_PDR0_HSP_PODF_OFFSET);
 return clk_get_rate(clk->parent) / (hsp_pdf + 1);
}
