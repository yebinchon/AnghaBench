
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct survey_info {int noise; int filled; int channel; } ;
struct mwl8k_priv {int noise; } ;
struct TYPE_2__ {int chan; } ;
struct ieee80211_conf {TYPE_1__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct mwl8k_priv* priv; } ;


 int ENOENT ;
 int SURVEY_INFO_NOISE_DBM ;

__attribute__((used)) static int mwl8k_get_survey(struct ieee80211_hw *hw, int idx,
    struct survey_info *survey)
{
 struct mwl8k_priv *priv = hw->priv;
 struct ieee80211_conf *conf = &hw->conf;

 if (idx != 0)
  return -ENOENT;

 survey->channel = conf->chandef.chan;
 survey->filled = SURVEY_INFO_NOISE_DBM;
 survey->noise = priv->noise;

 return 0;
}
