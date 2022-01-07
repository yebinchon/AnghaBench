
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long ulong ;
typedef int u32 ;
struct be_rx_stats {unsigned long rx_jiffies; unsigned long rx_pps; scalar_t__ rx_pkts; scalar_t__ rx_pkts_prev; } ;
struct TYPE_2__ {int id; } ;
struct be_eq_obj {size_t idx; int eqd; int cur_eqd; TYPE_1__ q; int min_eqd; int max_eqd; int enable_aic; } ;
struct be_adapter {size_t num_rx_qs; int * rx_obj; } ;


 unsigned long HZ ;
 int be_cmd_modify_eqd (struct be_adapter*,int ,int) ;
 unsigned long jiffies ;
 int max (int,int ) ;
 int min (int,int ) ;
 struct be_rx_stats* rx_stats (int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void be_eqd_update(struct be_adapter *adapter, struct be_eq_obj *eqo)
{
 struct be_rx_stats *stats = rx_stats(&adapter->rx_obj[eqo->idx]);
 ulong now = jiffies;
 ulong delta = now - stats->rx_jiffies;
 u32 eqd;

 if (!eqo->enable_aic) {
  eqd = eqo->eqd;
  goto modify_eqd;
 }

 if (eqo->idx >= adapter->num_rx_qs)
  return;

 stats = rx_stats(&adapter->rx_obj[eqo->idx]);


 if (time_before(now, stats->rx_jiffies)) {
  stats->rx_jiffies = now;
  return;
 }


 if (delta < HZ)
  return;

 stats->rx_pps = (unsigned long)(stats->rx_pkts - stats->rx_pkts_prev) / (delta / HZ);
 stats->rx_pkts_prev = stats->rx_pkts;
 stats->rx_jiffies = now;
 eqd = (stats->rx_pps / 110000) << 3;
 eqd = min(eqd, eqo->max_eqd);
 eqd = max(eqd, eqo->min_eqd);
 if (eqd < 10)
  eqd = 0;

modify_eqd:
 if (eqd != eqo->cur_eqd) {
  be_cmd_modify_eqd(adapter, eqo->q.id, eqd);
  eqo->cur_eqd = eqd;
 }
}
