
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int measure_hold; } ;


 int mboolclr (int ,int ) ;
 int mboolset (int ,int ) ;

void wlc_phy_hold_upd(struct brcms_phy_pub *pih, u32 id, bool set)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 if (set)
  mboolset(pi->measure_hold, id);
 else
  mboolclr(pi->measure_hold, id);

 return;
}
