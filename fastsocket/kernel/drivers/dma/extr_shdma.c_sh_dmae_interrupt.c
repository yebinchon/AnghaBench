
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_dmae_chan {int tasklet; } ;
typedef int irqreturn_t ;


 int CHCR ;
 int CHCR_TE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dmae_halt (struct sh_dmae_chan*) ;
 int sh_dmae_readl (struct sh_dmae_chan*,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t sh_dmae_interrupt(int irq, void *data)
{
 irqreturn_t ret = IRQ_NONE;
 struct sh_dmae_chan *sh_chan = (struct sh_dmae_chan *)data;
 u32 chcr = sh_dmae_readl(sh_chan, CHCR);

 if (chcr & CHCR_TE) {

  dmae_halt(sh_chan);

  ret = IRQ_HANDLED;
  tasklet_schedule(&sh_chan->tasklet);
 }

 return ret;
}
