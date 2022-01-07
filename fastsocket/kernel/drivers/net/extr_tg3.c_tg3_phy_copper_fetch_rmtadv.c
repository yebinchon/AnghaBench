
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rmt_adv; } ;
struct tg3 {int phy_flags; TYPE_1__ link_config; } ;


 int MII_LPA ;
 int MII_STAT1000 ;
 int TG3_PHYFLG_10_100_ONLY ;
 int mii_lpa_to_ethtool_lpa_t (int ) ;
 int mii_stat1000_to_ethtool_lpa_t (int ) ;
 scalar_t__ tg3_readphy (struct tg3*,int ,int *) ;

__attribute__((used)) static bool tg3_phy_copper_fetch_rmtadv(struct tg3 *tp, u32 *rmtadv)
{
 u32 lpeth = 0;

 if (!(tp->phy_flags & TG3_PHYFLG_10_100_ONLY)) {
  u32 val;

  if (tg3_readphy(tp, MII_STAT1000, &val))
   return 0;

  lpeth = mii_stat1000_to_ethtool_lpa_t(val);
 }

 if (tg3_readphy(tp, MII_LPA, rmtadv))
  return 0;

 lpeth |= mii_lpa_to_ethtool_lpa_t(*rmtadv);
 tp->link_config.rmt_adv = lpeth;

 return 1;
}
