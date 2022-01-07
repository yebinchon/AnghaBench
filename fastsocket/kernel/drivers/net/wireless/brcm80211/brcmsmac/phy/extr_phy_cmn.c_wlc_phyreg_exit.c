
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {int physhim; } ;


 int wlapi_bmac_ucode_wake_override_phyreg_clear (int ) ;

void wlc_phyreg_exit(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;
 wlapi_bmac_ucode_wake_override_phyreg_clear(pi->sh->physhim);
}
