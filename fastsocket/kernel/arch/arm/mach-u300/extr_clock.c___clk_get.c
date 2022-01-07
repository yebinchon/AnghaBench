
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clk {int name; } ;


 scalar_t__ U300_SYSCON_MMCR ;
 int U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE ;
 int U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE ;
 scalar_t__ U300_SYSCON_MMF0R ;
 scalar_t__ U300_SYSCON_VBASE ;
 int readw (scalar_t__) ;
 int strcmp (int ,char*) ;
 int writew (int,scalar_t__) ;

int __clk_get(struct clk *clk)
{
 u16 val;


 if (!strcmp(clk->name, "MCLK")) {

  writew(0x0054U, U300_SYSCON_VBASE + U300_SYSCON_MMF0R);
  val = readw(U300_SYSCON_VBASE + U300_SYSCON_MMCR);

  val &= ~U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE;

  val &= ~U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE;
  writew(val, U300_SYSCON_VBASE + U300_SYSCON_MMCR);
 }
 if (!strcmp(clk->name, "MSPRO")) {
  val = readw(U300_SYSCON_VBASE + U300_SYSCON_MMCR);

  val &= ~U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE;

  val |= U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE;
  writew(val, U300_SYSCON_VBASE + U300_SYSCON_MMCR);
 }
 return 1;
}
