
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {int d11core; TYPE_1__ pubpi; } ;


 int D11REGOFFS (int ) ;
 int ISNPHY (struct brcms_phy*) ;
 scalar_t__ NREV_IS (int ,int) ;
 int ON ;
 int bcma_set16 (int ,int ,int) ;
 int bcma_wflush16 (int ,int ,int) ;
 int bcma_write16 (int ,int ,scalar_t__) ;
 int phyregaddr ;
 int phyregdata ;
 int wlc_phy_por_inform (struct brcms_phy_pub*) ;

void wlc_phy_runbist_config(struct brcms_phy_pub *ppi, bool start_end)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;
 u16 rxc;
 rxc = 0;

 if (start_end == ON) {
  if (!ISNPHY(pi))
   return;

  if (NREV_IS(pi->pubpi.phy_rev, 3)
      || NREV_IS(pi->pubpi.phy_rev, 4)) {
   bcma_wflush16(pi->d11core, D11REGOFFS(phyregaddr),
          0xa0);
   bcma_set16(pi->d11core, D11REGOFFS(phyregdata),
       0x1 << 15);
  }
 } else {
  if (NREV_IS(pi->pubpi.phy_rev, 3)
      || NREV_IS(pi->pubpi.phy_rev, 4)) {
   bcma_wflush16(pi->d11core, D11REGOFFS(phyregaddr),
          0xa0);
   bcma_write16(pi->d11core, D11REGOFFS(phyregdata), rxc);
  }

  wlc_phy_por_inform(ppi);
 }
}
