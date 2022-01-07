
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; scalar_t__ phy_wreg; int d11core; } ;
struct TYPE_2__ {int physhim; } ;


 int D11REGOFFS (int ) ;
 int MCTL_LOCK_RADIO ;
 int bcma_read16 (int ,int ) ;
 int phyversion ;
 int wlapi_bmac_mctrl (int ,int ,int ) ;

void wlc_radioreg_exit(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 (void)bcma_read16(pi->d11core, D11REGOFFS(phyversion));
 pi->phy_wreg = 0;
 wlapi_bmac_mctrl(pi->sh->physhim, MCTL_LOCK_RADIO, 0);
}
