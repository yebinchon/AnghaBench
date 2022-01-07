
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_dmae_chan {int dummy; } ;


 int CHCR ;
 int CHCR_DE ;
 int CHCR_TE ;
 int EBUSY ;
 int sh_dmae_readl (struct sh_dmae_chan*,int ) ;

__attribute__((used)) static int dmae_is_idle(struct sh_dmae_chan *sh_chan)
{
 u32 chcr = sh_dmae_readl(sh_chan, CHCR);
 if (chcr & CHCR_DE) {
  if (!(chcr & CHCR_TE))
   return -EBUSY;
 }
 return 0;
}
