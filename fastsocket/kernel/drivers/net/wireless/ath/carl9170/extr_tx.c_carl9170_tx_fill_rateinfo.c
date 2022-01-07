
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ status; } ;
struct ar9170 {int dummy; } ;
struct TYPE_3__ {int idx; unsigned int count; } ;


 unsigned int IEEE80211_TX_MAX_RATES ;

__attribute__((used)) static void carl9170_tx_fill_rateinfo(struct ar9170 *ar, unsigned int rix,
 unsigned int tries, struct ieee80211_tx_info *txinfo)
{
 unsigned int i;

 for (i = 0; i < IEEE80211_TX_MAX_RATES; i++) {
  if (txinfo->status.rates[i].idx < 0)
   break;

  if (i == rix) {
   txinfo->status.rates[i].count = tries;
   i++;
   break;
  }
 }

 for (; i < IEEE80211_TX_MAX_RATES; i++) {
  txinfo->status.rates[i].idx = -1;
  txinfo->status.rates[i].count = 0;
 }
}
