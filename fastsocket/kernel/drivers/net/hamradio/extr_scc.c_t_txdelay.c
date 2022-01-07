
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_channel {int irq; int * tx_buff; } ;


 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int scc_start_maxkeyup (struct scc_channel*) ;
 int scc_txint (struct scc_channel*) ;

__attribute__((used)) static void t_txdelay(unsigned long channel)
{
 struct scc_channel *scc = (struct scc_channel *) channel;

 scc_start_maxkeyup(scc);

 if (scc->tx_buff == ((void*)0))
 {
  disable_irq(scc->irq);
  scc_txint(scc);
  enable_irq(scc->irq);
 }
}
