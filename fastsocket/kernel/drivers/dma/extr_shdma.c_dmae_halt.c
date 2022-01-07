
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_dmae_chan {int dummy; } ;


 int CHCR ;
 int CHCR_DE ;
 int CHCR_IE ;
 int CHCR_TE ;
 int sh_dmae_readl (struct sh_dmae_chan*,int ) ;
 int sh_dmae_writel (struct sh_dmae_chan*,int,int ) ;

__attribute__((used)) static void dmae_halt(struct sh_dmae_chan *sh_chan)
{
 u32 chcr = sh_dmae_readl(sh_chan, CHCR);

 chcr &= ~(CHCR_DE | CHCR_TE | CHCR_IE);
 sh_dmae_writel(sh_chan, chcr, CHCR);
}
