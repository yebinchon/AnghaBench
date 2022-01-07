
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {int coreflags; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;



u32 wlc_phy_get_coreflags(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;
 return pi->pubpi.coreflags;
}
