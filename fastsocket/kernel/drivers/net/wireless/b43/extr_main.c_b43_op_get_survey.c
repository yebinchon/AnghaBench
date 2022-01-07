
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct survey_info {int noise; int filled; int channel; } ;
struct TYPE_4__ {int chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; } ;
struct TYPE_3__ {int link_noise; } ;
struct b43_wldev {TYPE_1__ stats; } ;
struct b43_wl {struct b43_wldev* current_dev; } ;


 int ENOENT ;
 int SURVEY_INFO_NOISE_DBM ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;

__attribute__((used)) static int b43_op_get_survey(struct ieee80211_hw *hw, int idx,
        struct survey_info *survey)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);
 struct b43_wldev *dev = wl->current_dev;
 struct ieee80211_conf *conf = &hw->conf;

 if (idx != 0)
  return -ENOENT;

 survey->channel = conf->chandef.chan;
 survey->filled = SURVEY_INFO_NOISE_DBM;
 survey->noise = dev->stats.link_noise;

 return 0;
}
