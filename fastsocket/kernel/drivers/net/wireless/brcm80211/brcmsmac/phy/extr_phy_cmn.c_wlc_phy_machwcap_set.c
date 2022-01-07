
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {int machwcap; } ;



void wlc_phy_machwcap_set(struct brcms_phy_pub *ppi, u32 machwcap)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 pi->sh->machwcap = machwcap;
}
