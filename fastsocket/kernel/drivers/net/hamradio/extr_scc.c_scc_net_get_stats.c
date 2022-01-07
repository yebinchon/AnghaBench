
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {scalar_t__ tx_fifo_errors; scalar_t__ rx_fifo_errors; scalar_t__ tx_errors; scalar_t__ rx_errors; } ;
struct TYPE_2__ {scalar_t__ tx_under; scalar_t__ rx_over; scalar_t__ txerrs; scalar_t__ rxerrs; } ;
struct scc_channel {struct net_device_stats dev_stat; TYPE_1__ stat; } ;
struct net_device {scalar_t__ ml_priv; } ;



__attribute__((used)) static struct net_device_stats *scc_net_get_stats(struct net_device *dev)
{
 struct scc_channel *scc = (struct scc_channel *) dev->ml_priv;

 scc->dev_stat.rx_errors = scc->stat.rxerrs + scc->stat.rx_over;
 scc->dev_stat.tx_errors = scc->stat.txerrs + scc->stat.tx_under;
 scc->dev_stat.rx_fifo_errors = scc->stat.rx_over;
 scc->dev_stat.tx_fifo_errors = scc->stat.tx_under;

 return &scc->dev_stat;
}
