
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct niu {int num_tx_rings; int port; TYPE_1__* tx_rings; } ;
struct TYPE_2__ {int tx_channel; } ;


 int TXC_PORT_DMA (int ) ;
 int nw64 (int ,int) ;

__attribute__((used)) static void niu_txc_port_dma_enable(struct niu *np, int on)
{
 u64 val = 0;

 if (on) {
  int i;

  for (i = 0; i < np->num_tx_rings; i++)
   val |= (1 << np->tx_rings[i].tx_channel);
 }
 nw64(TXC_PORT_DMA(np->port), val);
}
