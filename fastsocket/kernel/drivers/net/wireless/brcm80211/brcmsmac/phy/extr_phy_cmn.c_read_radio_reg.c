
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {int phy_type; int phy_rev; } ;
struct brcms_phy {scalar_t__ phy_wreg; int d11core; TYPE_2__ pubpi; TYPE_1__* sh; } ;
struct TYPE_3__ {int corerev; } ;


 int CONF_HAS (int ,int const) ;
 int D11REGOFFS (int ) ;
 scalar_t__ D11REV_GE (int ,int) ;
 scalar_t__ D11REV_IS (int ,int) ;
 int NREV_GE (int ,int) ;
 int PHYTYPE ;


 int PHY_TYPE_SSN ;
 scalar_t__ RADIO_2055_READ_OFF ;
 scalar_t__ RADIO_2057_READ_OFF ;
 scalar_t__ RADIO_2064_READ_OFF ;
 scalar_t__ RADIO_IDCODE ;
 scalar_t__ bcma_read16 (int ,int ) ;
 int bcma_wflush16 (int ,int ,scalar_t__) ;
 int phy4waddr ;
 int phy4wdatalo ;
 int radioregaddr ;
 int radioregdata ;

u16 read_radio_reg(struct brcms_phy *pi, u16 addr)
{
 u16 data;

 if ((addr == RADIO_IDCODE))
  return 0xffff;

 switch (pi->pubpi.phy_type) {
 case 128:
  if (!CONF_HAS(PHYTYPE, 128))
   break;
  if (NREV_GE(pi->pubpi.phy_rev, 7))
   addr |= RADIO_2057_READ_OFF;
  else
   addr |= RADIO_2055_READ_OFF;
  break;

 case 129:
  if (!CONF_HAS(PHYTYPE, 129))
   break;
  addr |= RADIO_2064_READ_OFF;
  break;

 default:
  break;
 }

 if ((D11REV_GE(pi->sh->corerev, 24)) ||
     (D11REV_IS(pi->sh->corerev, 22)
      && (pi->pubpi.phy_type != PHY_TYPE_SSN))) {
  bcma_wflush16(pi->d11core, D11REGOFFS(radioregaddr), addr);
  data = bcma_read16(pi->d11core, D11REGOFFS(radioregdata));
 } else {
  bcma_wflush16(pi->d11core, D11REGOFFS(phy4waddr), addr);
  data = bcma_read16(pi->d11core, D11REGOFFS(phy4wdatalo));
 }
 pi->phy_wreg = 0;

 return data;
}
