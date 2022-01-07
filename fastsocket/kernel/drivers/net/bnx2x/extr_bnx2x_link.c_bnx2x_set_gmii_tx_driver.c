
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct link_params {struct bnx2x_phy* phy; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int CL22_RD_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,scalar_t__,int ,scalar_t__*) ;
 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,scalar_t__,int ,scalar_t__) ;
 size_t INT_PHY ;
 int MDIO_OVER_1G_LP_UP2 ;
 scalar_t__ MDIO_OVER_1G_LP_UP2_PREEMPHASIS_MASK ;
 scalar_t__ MDIO_OVER_1G_LP_UP2_PREEMPHASIS_SHIFT ;
 scalar_t__ MDIO_REG_BANK_OVER_1G ;
 scalar_t__ MDIO_REG_BANK_TX0 ;
 scalar_t__ MDIO_REG_BANK_TX1 ;
 scalar_t__ MDIO_REG_BANK_TX3 ;
 int MDIO_TX0_TX_DRIVER ;
 scalar_t__ MDIO_TX0_TX_DRIVER_PREEMPHASIS_MASK ;
 scalar_t__ MDIO_TX0_TX_DRIVER_PREEMPHASIS_SHIFT ;

__attribute__((used)) static void bnx2x_set_gmii_tx_driver(struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 struct bnx2x_phy *phy = &params->phy[INT_PHY];
 u16 lp_up2;
 u16 tx_driver;
 u16 bank;


 CL22_RD_OVER_CL45(bp, phy,
     MDIO_REG_BANK_OVER_1G,
     MDIO_OVER_1G_LP_UP2, &lp_up2);


 lp_up2 = (((lp_up2 & MDIO_OVER_1G_LP_UP2_PREEMPHASIS_MASK) >>
     MDIO_OVER_1G_LP_UP2_PREEMPHASIS_SHIFT) <<
    MDIO_TX0_TX_DRIVER_PREEMPHASIS_SHIFT);

 if (lp_up2 == 0)
  return;

 for (bank = MDIO_REG_BANK_TX0; bank <= MDIO_REG_BANK_TX3;
       bank += (MDIO_REG_BANK_TX1 - MDIO_REG_BANK_TX0)) {
  CL22_RD_OVER_CL45(bp, phy,
      bank,
      MDIO_TX0_TX_DRIVER, &tx_driver);


  if (lp_up2 !=
      (tx_driver & MDIO_TX0_TX_DRIVER_PREEMPHASIS_MASK)) {
   tx_driver &= ~MDIO_TX0_TX_DRIVER_PREEMPHASIS_MASK;
   tx_driver |= lp_up2;
   CL22_WR_OVER_CL45(bp, phy,
       bank,
       MDIO_TX0_TX_DRIVER, tx_driver);
  }
 }
}
