
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcms_phy_pub {int dummy; } ;


 int CHSPEC_CHANNEL (int ) ;
 int PHY_NOISE_SAMPLE_EXTERNAL ;
 int wlc_phy_chanspec_get (struct brcms_phy_pub*) ;
 int wlc_phy_noise_sample_request (struct brcms_phy_pub*,int ,int ) ;

void wlc_phy_noise_sample_request_external(struct brcms_phy_pub *pih)
{
 u8 channel;

 channel = CHSPEC_CHANNEL(wlc_phy_chanspec_get(pih));

 wlc_phy_noise_sample_request(pih, PHY_NOISE_SAMPLE_EXTERNAL, channel);
}
