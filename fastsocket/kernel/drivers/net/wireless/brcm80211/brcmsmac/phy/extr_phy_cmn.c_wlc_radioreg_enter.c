
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {int physhim; } ;


 int MCTL_LOCK_RADIO ;
 int udelay (int) ;
 int wlapi_bmac_mctrl (int ,int ,int ) ;

void wlc_radioreg_enter(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;
 wlapi_bmac_mctrl(pi->sh->physhim, MCTL_LOCK_RADIO, MCTL_LOCK_RADIO);

 udelay(10);
}
