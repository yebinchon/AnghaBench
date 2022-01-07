
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_12__ {int channel; } ;
struct rt2x00lib_conf {TYPE_6__ rf; TYPE_6__ channel; struct ieee80211_conf* conf; } ;
struct TYPE_7__ {int * channels_info; int * channels; } ;
struct rt2x00_dev {int long_retry; int short_retry; int tx_power; int curr_freq; int curr_band; int flags; int autowakeup_work; int workqueue; int beacon_int; scalar_t__ last_beacon; int cap_flags; TYPE_3__* ops; int rf_channel; TYPE_1__ spec; } ;
struct TYPE_11__ {TYPE_4__* chan; } ;
struct ieee80211_conf {int flags; size_t max_sleep_period; int long_frame_max_tx_count; int short_frame_max_tx_count; int power_level; TYPE_5__ chandef; } ;
typedef int libconf ;
struct TYPE_10__ {size_t hw_value; int center_freq; int band; } ;
struct TYPE_9__ {TYPE_2__* lib; } ;
struct TYPE_8__ {int (* config ) (struct rt2x00_dev*,struct rt2x00lib_conf*,unsigned int) ;} ;


 int CONFIG_CHANNEL_HT40 ;
 int CONFIG_HT_DISABLED ;
 int CONFIG_POWERSAVING ;
 int DEVICE_STATE_PRESENT ;
 unsigned int IEEE80211_CONF_CHANGE_CHANNEL ;
 unsigned int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_PS ;
 int REQUIRE_PS_AUTOWAKE ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int conf_is_ht (struct ieee80211_conf*) ;
 scalar_t__ conf_is_ht40 (struct ieee80211_conf*) ;
 scalar_t__ jiffies ;
 int memcpy (TYPE_6__*,int *,int) ;
 int memset (struct rt2x00lib_conf*,int ,int) ;
 size_t msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,size_t) ;
 size_t rt2x00ht_center_channel (struct rt2x00_dev*,struct ieee80211_conf*) ;
 int rt2x00link_reset_tuner (struct rt2x00_dev*,int) ;
 int set_bit (int ,int *) ;
 int stub1 (struct rt2x00_dev*,struct rt2x00lib_conf*,unsigned int) ;
 scalar_t__ test_bit (int ,int *) ;

void rt2x00lib_config(struct rt2x00_dev *rt2x00dev,
        struct ieee80211_conf *conf,
        unsigned int ieee80211_flags)
{
 struct rt2x00lib_conf libconf;
 u16 hw_value;
 u16 autowake_timeout;
 u16 beacon_int;
 u16 beacon_diff;

 memset(&libconf, 0, sizeof(libconf));

 libconf.conf = conf;

 if (ieee80211_flags & IEEE80211_CONF_CHANGE_CHANNEL) {
  if (!conf_is_ht(conf))
   set_bit(CONFIG_HT_DISABLED, &rt2x00dev->flags);
  else
   clear_bit(CONFIG_HT_DISABLED, &rt2x00dev->flags);

  if (conf_is_ht40(conf)) {
   set_bit(CONFIG_CHANNEL_HT40, &rt2x00dev->flags);
   hw_value = rt2x00ht_center_channel(rt2x00dev, conf);
  } else {
   clear_bit(CONFIG_CHANNEL_HT40, &rt2x00dev->flags);
   hw_value = conf->chandef.chan->hw_value;
  }

  memcpy(&libconf.rf,
         &rt2x00dev->spec.channels[hw_value],
         sizeof(libconf.rf));

  memcpy(&libconf.channel,
         &rt2x00dev->spec.channels_info[hw_value],
         sizeof(libconf.channel));


  rt2x00dev->rf_channel = libconf.rf.channel;
 }

 if (test_bit(REQUIRE_PS_AUTOWAKE, &rt2x00dev->cap_flags) &&
     (ieee80211_flags & IEEE80211_CONF_CHANGE_PS))
  cancel_delayed_work_sync(&rt2x00dev->autowakeup_work);




 rt2x00dev->ops->lib->config(rt2x00dev, &libconf, ieee80211_flags);





 if (ieee80211_flags & IEEE80211_CONF_CHANGE_CHANNEL)
  rt2x00link_reset_tuner(rt2x00dev, 0);

 if (test_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags) &&
     test_bit(REQUIRE_PS_AUTOWAKE, &rt2x00dev->cap_flags) &&
     (ieee80211_flags & IEEE80211_CONF_CHANGE_PS) &&
     (conf->flags & IEEE80211_CONF_PS)) {
  beacon_diff = (long)jiffies - (long)rt2x00dev->last_beacon;
  beacon_int = msecs_to_jiffies(rt2x00dev->beacon_int);

  if (beacon_diff > beacon_int)
   beacon_diff = 0;

  autowake_timeout = (conf->max_sleep_period * beacon_int) - beacon_diff;
  queue_delayed_work(rt2x00dev->workqueue,
       &rt2x00dev->autowakeup_work,
       autowake_timeout - 15);
 }

 if (conf->flags & IEEE80211_CONF_PS)
  set_bit(CONFIG_POWERSAVING, &rt2x00dev->flags);
 else
  clear_bit(CONFIG_POWERSAVING, &rt2x00dev->flags);

 rt2x00dev->curr_band = conf->chandef.chan->band;
 rt2x00dev->curr_freq = conf->chandef.chan->center_freq;
 rt2x00dev->tx_power = conf->power_level;
 rt2x00dev->short_retry = conf->short_frame_max_tx_count;
 rt2x00dev->long_retry = conf->long_frame_max_tx_count;
}
