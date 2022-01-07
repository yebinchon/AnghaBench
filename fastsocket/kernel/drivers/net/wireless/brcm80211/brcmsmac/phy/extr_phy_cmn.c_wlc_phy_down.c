
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {scalar_t__ nphy_iqcal_chanspec_5G; scalar_t__ nphy_iqcal_chanspec_2G; scalar_t__ phycal_timer; } ;


 int wlapi_del_timer (scalar_t__) ;

int wlc_phy_down(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;
 int callbacks = 0;

 if (pi->phycal_timer
     && !wlapi_del_timer(pi->phycal_timer))
  callbacks++;

 pi->nphy_iqcal_chanspec_2G = 0;
 pi->nphy_iqcal_chanspec_5G = 0;

 return callbacks;
}
