
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ loopback_mode; } ;
struct niu {int phy_addr; TYPE_1__ link_config; } ;


 scalar_t__ LOOPBACK_MAC ;
 int MRVL88X2011_10G_PMD_TX_DIS ;
 int MRVL88X2011_ENA_PMDTX ;
 int MRVL88X2011_ENA_XFPREFCLK ;
 int MRVL88X2011_GENERAL_CTL ;
 int MRVL88X2011_LED_BLKRATE_134MS ;
 int MRVL88X2011_LED_CTL_OFF ;
 int MRVL88X2011_LOOPBACK ;
 int MRVL88X2011_PMA_PMD_CTL_1 ;
 int MRVL88X2011_USER_DEV1_ADDR ;
 int MRVL88X2011_USER_DEV3_ADDR ;
 int mdio_read (struct niu*,int ,int ,int ) ;
 int mdio_write (struct niu*,int ,int ,int ,int) ;
 int mrvl88x2011_act_led (struct niu*,int ) ;
 int mrvl88x2011_led_blink_rate (struct niu*,int ) ;

__attribute__((used)) static int xcvr_init_10g_mrvl88x2011(struct niu *np)
{
 int err;


 err = mrvl88x2011_led_blink_rate(np, MRVL88X2011_LED_BLKRATE_134MS);
 if (err)
  return err;


 err = mrvl88x2011_act_led(np, MRVL88X2011_LED_CTL_OFF);
 if (err)
  return err;

 err = mdio_read(np, np->phy_addr, MRVL88X2011_USER_DEV3_ADDR,
   MRVL88X2011_GENERAL_CTL);
 if (err < 0)
  return err;

 err |= MRVL88X2011_ENA_XFPREFCLK;

 err = mdio_write(np, np->phy_addr, MRVL88X2011_USER_DEV3_ADDR,
    MRVL88X2011_GENERAL_CTL, err);
 if (err < 0)
  return err;

 err = mdio_read(np, np->phy_addr, MRVL88X2011_USER_DEV1_ADDR,
   MRVL88X2011_PMA_PMD_CTL_1);
 if (err < 0)
  return err;

 if (np->link_config.loopback_mode == LOOPBACK_MAC)
  err |= MRVL88X2011_LOOPBACK;
 else
  err &= ~MRVL88X2011_LOOPBACK;

 err = mdio_write(np, np->phy_addr, MRVL88X2011_USER_DEV1_ADDR,
    MRVL88X2011_PMA_PMD_CTL_1, err);
 if (err < 0)
  return err;


 return mdio_write(np, np->phy_addr, MRVL88X2011_USER_DEV1_ADDR,
     MRVL88X2011_10G_PMD_TX_DIS, MRVL88X2011_ENA_PMDTX);
}
