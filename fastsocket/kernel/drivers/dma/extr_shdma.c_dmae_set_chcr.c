
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_dmae_chan {int dummy; } ;


 int CHCR ;
 int dmae_is_idle (struct sh_dmae_chan*) ;
 int sh_dmae_writel (struct sh_dmae_chan*,int ,int ) ;

__attribute__((used)) static int dmae_set_chcr(struct sh_dmae_chan *sh_chan, u32 val)
{
 int ret = dmae_is_idle(sh_chan);

 if (ret)
  return ret;

 sh_dmae_writel(sh_chan, val, CHCR);
 return 0;
}
