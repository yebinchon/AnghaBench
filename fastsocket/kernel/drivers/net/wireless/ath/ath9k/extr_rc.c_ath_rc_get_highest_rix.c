
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct ath_rate_table {scalar_t__ probe_interval; TYPE_1__* info; } ;
struct ath_rate_priv {size_t max_valid_rate; size_t* valid_rate_index; size_t rate_max_phy; size_t* per; scalar_t__ probe_time; int hw_maxretry_pktcnt; size_t probe_rate; int rate_table_size; int ht_cap; struct ath_rate_table* rate_table; } ;
typedef size_t int8_t ;
struct TYPE_2__ {int user_ratekbps; int rate_flags; } ;


 scalar_t__ RC_DS_OR_LATER (int ) ;
 scalar_t__ RC_SS_OR_LEGACY (int ) ;
 scalar_t__ RC_TS_ONLY (int ) ;
 int WARN_ON_ONCE (int) ;
 int WLAN_RC_DS_FLAG ;
 int WLAN_RC_TS_FLAG ;
 scalar_t__ ath_rc_get_nextvalid_txrate (struct ath_rate_table const*,struct ath_rate_priv*,size_t,size_t*) ;
 int jiffies ;
 scalar_t__ jiffies_to_msecs (int ) ;

__attribute__((used)) static u8 ath_rc_get_highest_rix(struct ath_rate_priv *ath_rc_priv,
     int *is_probing)
{
 const struct ath_rate_table *rate_table = ath_rc_priv->rate_table;
 u32 best_thruput, this_thruput, now_msec;
 u8 rate, next_rate, best_rate, maxindex, minindex;
 int8_t index = 0;

 now_msec = jiffies_to_msecs(jiffies);
 *is_probing = 0;
 best_thruput = 0;
 maxindex = ath_rc_priv->max_valid_rate-1;
 minindex = 0;
 best_rate = minindex;





 for (index = maxindex; index >= minindex ; index--) {
  u8 per_thres;

  rate = ath_rc_priv->valid_rate_index[index];
  if (rate > ath_rc_priv->rate_max_phy)
   continue;
  per_thres = ath_rc_priv->per[rate];
  if (per_thres < 12)
   per_thres = 12;

  this_thruput = rate_table->info[rate].user_ratekbps *
   (100 - per_thres);

  if (best_thruput <= this_thruput) {
   best_thruput = this_thruput;
   best_rate = rate;
  }
 }

 rate = best_rate;






 if (rate >= ath_rc_priv->rate_max_phy) {
  rate = ath_rc_priv->rate_max_phy;


  if (ath_rc_get_nextvalid_txrate(rate_table,
     ath_rc_priv, rate, &next_rate) &&
      (now_msec - ath_rc_priv->probe_time >
       rate_table->probe_interval) &&
      (ath_rc_priv->hw_maxretry_pktcnt >= 1)) {
   rate = next_rate;
   ath_rc_priv->probe_rate = rate;
   ath_rc_priv->probe_time = now_msec;
   ath_rc_priv->hw_maxretry_pktcnt = 0;
   *is_probing = 1;
  }
 }

 if (rate > (ath_rc_priv->rate_table_size - 1))
  rate = ath_rc_priv->rate_table_size - 1;

 if (RC_TS_ONLY(rate_table->info[rate].rate_flags) &&
     (ath_rc_priv->ht_cap & WLAN_RC_TS_FLAG))
  return rate;

 if (RC_DS_OR_LATER(rate_table->info[rate].rate_flags) &&
     (ath_rc_priv->ht_cap & (WLAN_RC_DS_FLAG | WLAN_RC_TS_FLAG)))
  return rate;

 if (RC_SS_OR_LEGACY(rate_table->info[rate].rate_flags))
  return rate;


 WARN_ON_ONCE(1);

 rate = ath_rc_priv->valid_rate_index[0];

 return rate;
}
