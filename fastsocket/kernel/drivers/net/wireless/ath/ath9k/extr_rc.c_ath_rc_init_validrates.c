
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct ath_rate_table {size_t rate_cnt; TYPE_1__* info; } ;
struct ath_rate_priv {size_t* valid_phy_ratecnt; size_t** valid_phy_rateidx; int* valid_rate_index; int ht_cap; struct ath_rate_table* rate_table; } ;
struct TYPE_2__ {int rate_flags; size_t phy; } ;


 int RC_LEGACY ;
 int ath_rc_valid_phyrate (size_t,int ,int ) ;

__attribute__((used)) static u8 ath_rc_init_validrates(struct ath_rate_priv *ath_rc_priv)
{
 const struct ath_rate_table *rate_table = ath_rc_priv->rate_table;
 u8 i, hi = 0;

 for (i = 0; i < rate_table->rate_cnt; i++) {
  if (rate_table->info[i].rate_flags & RC_LEGACY) {
   u32 phy = rate_table->info[i].phy;
   u8 valid_rate_count = 0;

   if (!ath_rc_valid_phyrate(phy, ath_rc_priv->ht_cap, 0))
    continue;

   valid_rate_count = ath_rc_priv->valid_phy_ratecnt[phy];

   ath_rc_priv->valid_phy_rateidx[phy][valid_rate_count] = i;
   ath_rc_priv->valid_phy_ratecnt[phy] += 1;
   ath_rc_priv->valid_rate_index[i] = 1;
   hi = i;
  }
 }

 return hi;
}
