
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct survey_info {int filled; int channel_time; int channel_time_busy; int channel_time_ext_busy; int channel; } ;
struct rt2x00_dev {int dummy; } ;
struct TYPE_2__ {int chan; } ;
struct ieee80211_conf {int flags; TYPE_1__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct rt2x00_dev* priv; } ;


 int CH_BUSY_STA ;
 int CH_BUSY_STA_SEC ;
 int CH_IDLE_STA ;
 int ENOENT ;
 int IEEE80211_CONF_OFFCHANNEL ;
 int SURVEY_INFO_CHANNEL_TIME ;
 int SURVEY_INFO_CHANNEL_TIME_BUSY ;
 int SURVEY_INFO_CHANNEL_TIME_EXT_BUSY ;
 int SURVEY_INFO_IN_USE ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int*) ;

int rt2800_get_survey(struct ieee80211_hw *hw, int idx,
        struct survey_info *survey)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct ieee80211_conf *conf = &hw->conf;
 u32 idle, busy, busy_ext;

 if (idx != 0)
  return -ENOENT;

 survey->channel = conf->chandef.chan;

 rt2800_register_read(rt2x00dev, CH_IDLE_STA, &idle);
 rt2800_register_read(rt2x00dev, CH_BUSY_STA, &busy);
 rt2800_register_read(rt2x00dev, CH_BUSY_STA_SEC, &busy_ext);

 if (idle || busy) {
  survey->filled = SURVEY_INFO_CHANNEL_TIME |
     SURVEY_INFO_CHANNEL_TIME_BUSY |
     SURVEY_INFO_CHANNEL_TIME_EXT_BUSY;

  survey->channel_time = (idle + busy) / 1000;
  survey->channel_time_busy = busy / 1000;
  survey->channel_time_ext_busy = busy_ext / 1000;
 }

 if (!(hw->conf.flags & IEEE80211_CONF_OFFCHANNEL))
  survey->filled |= SURVEY_INFO_IN_USE;

 return 0;

}
