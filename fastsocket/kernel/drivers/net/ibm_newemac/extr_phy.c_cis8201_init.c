
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phy {int mode; } ;


 int ACSR_PIN_PRIO_SELECT ;
 int EPCR_GMII_MODE ;
 int EPCR_MODE_MASK ;
 int EPCR_RGMII_MODE ;
 int EPCR_RTBI_MODE ;
 int EPCR_TBI_MODE ;
 int MII_CIS8201_10BTCSR ;
 int MII_CIS8201_ACSR ;
 int MII_CIS8201_EPCR ;




 int TENBTCSR_ECHO_DISABLE ;
 int phy_read (struct mii_phy*,int ) ;
 int phy_write (struct mii_phy*,int ,int) ;

__attribute__((used)) static int cis8201_init(struct mii_phy *phy)
{
 int epcr;

 epcr = phy_read(phy, MII_CIS8201_EPCR);
 if (epcr < 0)
  return epcr;

 epcr &= ~EPCR_MODE_MASK;

 switch (phy->mode) {
 case 128:
  epcr |= EPCR_TBI_MODE;
  break;
 case 129:
  epcr |= EPCR_RTBI_MODE;
  break;
 case 131:
  epcr |= EPCR_GMII_MODE;
  break;
 case 130:
 default:
  epcr |= EPCR_RGMII_MODE;
 }

 phy_write(phy, MII_CIS8201_EPCR, epcr);


 phy_write(phy, MII_CIS8201_ACSR,
    phy_read(phy, MII_CIS8201_ACSR) | ACSR_PIN_PRIO_SELECT);


 phy_write(phy, MII_CIS8201_10BTCSR,
    phy_read(phy, MII_CIS8201_10BTCSR) | TENBTCSR_ECHO_DISABLE);

 return 0;
}
