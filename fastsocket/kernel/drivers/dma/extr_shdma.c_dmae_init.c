
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_dmae_chan {int dummy; } ;


 int CHCR ;
 int RS_DEFAULT ;
 int sh_dmae_writel (struct sh_dmae_chan*,int ,int ) ;

__attribute__((used)) static void dmae_init(struct sh_dmae_chan *sh_chan)
{
 u32 chcr = RS_DEFAULT;
 sh_dmae_writel(sh_chan, chcr, CHCR);
}
