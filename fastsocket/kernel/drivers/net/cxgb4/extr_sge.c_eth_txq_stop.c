
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stops; } ;
struct sge_eth_txq {TYPE_1__ q; int txq; } ;


 int netif_tx_stop_queue (int ) ;

__attribute__((used)) static void eth_txq_stop(struct sge_eth_txq *q)
{
 netif_tx_stop_queue(q->txq);
 q->q.stops++;
}
