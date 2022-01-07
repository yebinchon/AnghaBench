
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct ieee80211_supported_band {size_t band; size_t n_bitrates; TYPE_1__* bitrates; } ;
struct ath5k_hw {int** rate_idx; } ;
struct TYPE_2__ {size_t hw_value; int hw_value_short; } ;


 size_t AR5K_MAX_RATES ;

__attribute__((used)) static void
ath5k_setup_rate_idx(struct ath5k_hw *ah, struct ieee80211_supported_band *b)
{
 u8 i;

 for (i = 0; i < AR5K_MAX_RATES; i++)
  ah->rate_idx[b->band][i] = -1;

 for (i = 0; i < b->n_bitrates; i++) {
  ah->rate_idx[b->band][b->bitrates[i].hw_value] = i;
  if (b->bitrates[i].hw_value_short)
   ah->rate_idx[b->band][b->bitrates[i].hw_value_short] = i;
 }
}
