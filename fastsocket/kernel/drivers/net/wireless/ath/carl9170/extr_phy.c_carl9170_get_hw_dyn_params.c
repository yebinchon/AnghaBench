
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ieee80211_channel {unsigned int hw_value; scalar_t__ center_freq; } ;
struct carl9170_phy_freq_params {int dummy; } ;
typedef enum carl9170_bw { ____Placeholder_carl9170_bw } carl9170_bw ;
struct TYPE_3__ {scalar_t__ freq; struct carl9170_phy_freq_params const* params; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int WARN_ON (int) ;
 int __CARL9170_NUM_BW ;
 TYPE_1__* carl9170_phy_freq_params ;

__attribute__((used)) static const struct carl9170_phy_freq_params *
carl9170_get_hw_dyn_params(struct ieee80211_channel *channel,
      enum carl9170_bw bw)
{
 unsigned int chanidx = 0;
 u16 freq = 2412;

 if (channel) {
  chanidx = channel->hw_value;
  freq = channel->center_freq;
 }

 BUG_ON(chanidx >= ARRAY_SIZE(carl9170_phy_freq_params));

 BUILD_BUG_ON(__CARL9170_NUM_BW != 3);

 WARN_ON(carl9170_phy_freq_params[chanidx].freq != freq);

 return &carl9170_phy_freq_params[chanidx].params[bw];
}
