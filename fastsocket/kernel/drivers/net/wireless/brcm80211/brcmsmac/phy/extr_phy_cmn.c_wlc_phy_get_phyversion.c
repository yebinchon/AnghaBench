
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {scalar_t__ radiorev; scalar_t__ radioid; scalar_t__ phy_rev; scalar_t__ phy_type; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;



bool
wlc_phy_get_phyversion(struct brcms_phy_pub *pih, u16 *phytype, u16 *phyrev,
         u16 *radioid, u16 *radiover)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;
 *phytype = (u16) pi->pubpi.phy_type;
 *phyrev = (u16) pi->pubpi.phy_rev;
 *radioid = pi->pubpi.radioid;
 *radiover = pi->pubpi.radiorev;

 return 1;
}
