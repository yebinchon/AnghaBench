
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_state; int txerrs; } ;
struct scc_channel {int dev; TYPE_1__ stat; int tx_t; } ;


 int TXS_IDLE ;
 int del_timer (int *) ;
 int netif_stop_queue (int ) ;
 int netif_wake_queue (int ) ;
 int scc_discard_buffers (struct scc_channel*) ;

__attribute__((used)) static void t_busy(unsigned long channel)
{
 struct scc_channel *scc = (struct scc_channel *) channel;

 del_timer(&scc->tx_t);
 netif_stop_queue(scc->dev);

 scc_discard_buffers(scc);
 scc->stat.txerrs++;
 scc->stat.tx_state = TXS_IDLE;

 netif_wake_queue(scc->dev);
}
