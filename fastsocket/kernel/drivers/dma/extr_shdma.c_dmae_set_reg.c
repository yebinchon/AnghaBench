
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_dmae_regs {int sar; int dar; int tcr; } ;
struct sh_dmae_chan {int dummy; } ;


 int DAR ;
 int SAR ;
 int TCR ;
 int calc_xmit_shift (struct sh_dmae_chan*) ;
 int sh_dmae_writel (struct sh_dmae_chan*,int,int ) ;

__attribute__((used)) static void dmae_set_reg(struct sh_dmae_chan *sh_chan, struct sh_dmae_regs hw)
{
 sh_dmae_writel(sh_chan, hw.sar, SAR);
 sh_dmae_writel(sh_chan, hw.dar, DAR);
 sh_dmae_writel(sh_chan,
  (hw.tcr >> calc_xmit_shift(sh_chan)), TCR);
}
