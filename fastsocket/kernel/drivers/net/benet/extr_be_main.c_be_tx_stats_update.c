
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_tx_stats {int tx_pkts; int tx_stops; int tx_bytes; int tx_wrbs; int tx_reqs; } ;
struct be_tx_obj {int dummy; } ;


 struct be_tx_stats* tx_stats (struct be_tx_obj*) ;

__attribute__((used)) static void be_tx_stats_update(struct be_tx_obj *txo,
   u32 wrb_cnt, u32 copied, u32 gso_segs, bool stopped)
{
 struct be_tx_stats *stats = tx_stats(txo);

 stats->tx_reqs++;
 stats->tx_wrbs += wrb_cnt;
 stats->tx_bytes += copied;
 stats->tx_pkts += (gso_segs ? gso_segs : 1);
 if (stopped)
  stats->tx_stops++;
}
