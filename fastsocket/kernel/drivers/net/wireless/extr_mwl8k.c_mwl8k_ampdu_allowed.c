
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tx_traffic_info {scalar_t__ pkts; } ;
struct mwl8k_sta {scalar_t__ is_ampdu_allowed; struct tx_traffic_info* tx_stats; } ;
struct ieee80211_sta {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ MWL8K_AMPDU_PACKET_THRESHOLD ;
 size_t MWL8K_MAX_TID ;
 struct mwl8k_sta* MWL8K_STA (struct ieee80211_sta*) ;

__attribute__((used)) static inline bool mwl8k_ampdu_allowed(struct ieee80211_sta *sta, u8 tid)
{
 struct mwl8k_sta *sta_info = MWL8K_STA(sta);
 struct tx_traffic_info *tx_stats;

 BUG_ON(tid >= MWL8K_MAX_TID);
 tx_stats = &sta_info->tx_stats[tid];

 return sta_info->is_ampdu_allowed &&
  tx_stats->pkts > MWL8K_AMPDU_PACKET_THRESHOLD;
}
