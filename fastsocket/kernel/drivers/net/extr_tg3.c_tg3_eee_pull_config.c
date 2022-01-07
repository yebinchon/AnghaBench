
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethtool_eee {int eee_active; int eee_enabled; int tx_lpi_enabled; int tx_lpi_timer; void* advertised; void* lp_advertised; } ;
struct tg3 {int phy_flags; struct ethtool_eee eee; } ;


 int MDIO_AN_EEE_ADV ;
 int MDIO_AN_EEE_LPABLE ;
 int MDIO_MMD_AN ;
 int TG3_CL45_D7_EEERES_STAT ;
 int TG3_CL45_D7_EEERES_STAT_LP_1000T ;
 int TG3_CL45_D7_EEERES_STAT_LP_100TX ;
 int TG3_CPMU_EEEMD_LPI_IN_TX ;
 int TG3_CPMU_EEE_DBTMR1 ;
 int TG3_CPMU_EEE_MODE ;
 int TG3_PHYFLG_EEE_CAP ;
 void* mmd_eee_adv_to_ethtool_adv_t (int) ;
 scalar_t__ tg3_phy_cl45_read (struct tg3*,int ,int ,int*) ;
 int tr32 (int ) ;

__attribute__((used)) static void tg3_eee_pull_config(struct tg3 *tp, struct ethtool_eee *eee)
{
 u32 val;
 struct ethtool_eee *dest = &tp->eee;

 if (!(tp->phy_flags & TG3_PHYFLG_EEE_CAP))
  return;

 if (eee)
  dest = eee;

 if (tg3_phy_cl45_read(tp, MDIO_MMD_AN, TG3_CL45_D7_EEERES_STAT, &val))
  return;


 if (val == TG3_CL45_D7_EEERES_STAT_LP_1000T ||
     val == TG3_CL45_D7_EEERES_STAT_LP_100TX) {
  dest->eee_active = 1;
 } else
  dest->eee_active = 0;


 if (tg3_phy_cl45_read(tp, MDIO_MMD_AN, MDIO_AN_EEE_LPABLE, &val))
  return;
 dest->lp_advertised = mmd_eee_adv_to_ethtool_adv_t(val);


 if (tg3_phy_cl45_read(tp, MDIO_MMD_AN, MDIO_AN_EEE_ADV, &val))
  return;
 dest->eee_enabled = !!val;
 dest->advertised = mmd_eee_adv_to_ethtool_adv_t(val);


 val = tr32(TG3_CPMU_EEE_MODE);
 dest->tx_lpi_enabled = !!(val & TG3_CPMU_EEEMD_LPI_IN_TX);


 dest->tx_lpi_timer = tr32(TG3_CPMU_EEE_DBTMR1) & 0xffff;
}
