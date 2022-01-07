
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {int dummy; } ;
typedef int s8 ;


 scalar_t__ ISLCNPHY (struct brcms_phy*) ;
 int wlc_lcnphy_vbatsense (struct brcms_phy*,int ) ;

__attribute__((used)) static s8 wlc_phy_env_measure_vbat(struct brcms_phy *pi)
{
 if (ISLCNPHY(pi))
  return wlc_lcnphy_vbatsense(pi, 0);
 else
  return 0;
}
