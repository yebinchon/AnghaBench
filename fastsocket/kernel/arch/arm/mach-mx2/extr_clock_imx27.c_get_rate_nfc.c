
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int CCM_PCDR0 ;
 scalar_t__ CHIP_REV_2_0 ;
 int __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;
 scalar_t__ mx27_revision () ;

__attribute__((used)) static unsigned long get_rate_nfc(struct clk *clk)
{
 unsigned long nfc_pdf;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 if (mx27_revision() >= CHIP_REV_2_0)
  nfc_pdf = (__raw_readl(CCM_PCDR0) >> 6) & 0xf;
 else
  nfc_pdf = (__raw_readl(CCM_PCDR0) >> 12) & 0xf;

 return parent_rate / (nfc_pdf + 1);
}
