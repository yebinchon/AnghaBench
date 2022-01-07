
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int channel_14_wide_filter; } ;



void wlc_phy_chanspec_ch14_widefilter_set(struct brcms_phy_pub *ppi,
       bool wide_filter)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 pi->channel_14_wide_filter = wide_filter;

}
