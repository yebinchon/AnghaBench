
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int CHSPEC_CHANNEL (int ) ;
 scalar_t__ ISLCNPHY (struct brcms_phy*) ;
 scalar_t__ ISNPHY (struct brcms_phy*) ;
 int wlc_phy_channel2freq (int ) ;
 int wlc_phy_chanspec_freq2bandrange_lpssn (int ) ;
 int wlc_phy_get_chan_freq_range_nphy (struct brcms_phy*,int ) ;

int wlc_phy_chanspec_bandrange_get(struct brcms_phy *pi, u16 chanspec)
{
 int range = -1;
 uint channel = CHSPEC_CHANNEL(chanspec);
 uint freq = wlc_phy_channel2freq(channel);

 if (ISNPHY(pi))
  range = wlc_phy_get_chan_freq_range_nphy(pi, channel);
 else if (ISLCNPHY(pi))
  range = wlc_phy_chanspec_freq2bandrange_lpssn(freq);

 return range;
}
