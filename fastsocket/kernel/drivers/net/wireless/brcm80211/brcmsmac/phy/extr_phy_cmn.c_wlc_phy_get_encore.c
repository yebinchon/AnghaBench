
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {int abgphy_encore; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;



bool wlc_phy_get_encore(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;
 return pi->pubpi.abgphy_encore;
}
