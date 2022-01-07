
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active_duplex; int active_speed; } ;
struct niu {TYPE_1__ link_config; int phy_addr; } ;


 int DUPLEX_FULL ;
 int MRVL88X2011_10G_PMD_STATUS_2 ;
 int MRVL88X2011_10G_XGXS_LANE_STAT ;
 int MRVL88X2011_LED_CTL_OFF ;
 int MRVL88X2011_LED_CTL_PCS_ACT ;
 int MRVL88X2011_LNK_STATUS_OK ;
 int MRVL88X2011_PMA_PMD_STATUS_1 ;
 int MRVL88X2011_USER_DEV1_ADDR ;
 int MRVL88X2011_USER_DEV3_ADDR ;
 int MRVL88X2011_USER_DEV4_ADDR ;
 int PHYXS_XGXS_LANE_STAT_ALINGED ;
 int PHYXS_XGXS_LANE_STAT_LANE0 ;
 int PHYXS_XGXS_LANE_STAT_LANE1 ;
 int PHYXS_XGXS_LANE_STAT_LANE2 ;
 int PHYXS_XGXS_LANE_STAT_LANE3 ;
 int PHYXS_XGXS_LANE_STAT_MAGIC ;
 int SPEED_10000 ;
 int mdio_read (struct niu*,int ,int ,int ) ;
 int mrvl88x2011_act_led (struct niu*,int ) ;

__attribute__((used)) static int link_status_10g_mrvl(struct niu *np, int *link_up_p)
{
 int err, link_up, pma_status, pcs_status;

 link_up = 0;

 err = mdio_read(np, np->phy_addr, MRVL88X2011_USER_DEV1_ADDR,
   MRVL88X2011_10G_PMD_STATUS_2);
 if (err < 0)
  goto out;


 err = mdio_read(np, np->phy_addr, MRVL88X2011_USER_DEV1_ADDR,
   MRVL88X2011_PMA_PMD_STATUS_1);
 if (err < 0)
  goto out;

 pma_status = ((err & MRVL88X2011_LNK_STATUS_OK) ? 1 : 0);


 err = mdio_read(np, np->phy_addr, MRVL88X2011_USER_DEV3_ADDR,
   MRVL88X2011_PMA_PMD_STATUS_1);
 if (err < 0)
  goto out;

 err = mdio_read(np, np->phy_addr, MRVL88X2011_USER_DEV3_ADDR,
   MRVL88X2011_PMA_PMD_STATUS_1);
 if (err < 0)
  goto out;

 pcs_status = ((err & MRVL88X2011_LNK_STATUS_OK) ? 1 : 0);


 err = mdio_read(np, np->phy_addr, MRVL88X2011_USER_DEV4_ADDR,
   MRVL88X2011_10G_XGXS_LANE_STAT);
 if (err < 0)
  goto out;

 if (err == (PHYXS_XGXS_LANE_STAT_ALINGED | PHYXS_XGXS_LANE_STAT_LANE3 |
      PHYXS_XGXS_LANE_STAT_LANE2 | PHYXS_XGXS_LANE_STAT_LANE1 |
      PHYXS_XGXS_LANE_STAT_LANE0 | PHYXS_XGXS_LANE_STAT_MAGIC |
      0x800))
  link_up = (pma_status && pcs_status) ? 1 : 0;

 np->link_config.active_speed = SPEED_10000;
 np->link_config.active_duplex = DUPLEX_FULL;
 err = 0;
out:
 mrvl88x2011_act_led(np, (link_up ?
     MRVL88X2011_LED_CTL_PCS_ACT :
     MRVL88X2011_LED_CTL_OFF));

 *link_up_p = link_up;
 return err;
}
