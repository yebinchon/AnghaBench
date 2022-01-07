
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct survey_info {scalar_t__ channel_time_tx; scalar_t__ channel_time_busy; scalar_t__ channel_time; } ;
struct TYPE_2__ {scalar_t__ tx; scalar_t__ cca; scalar_t__ active; } ;
struct p54_common {int update_stats; TYPE_1__ survey_raw; struct survey_info* survey; struct ieee80211_channel* curchan; } ;
struct ieee80211_channel {size_t hw_value; } ;



__attribute__((used)) static void p54_reset_stats(struct p54_common *priv)
{
 struct ieee80211_channel *chan = priv->curchan;

 if (chan) {
  struct survey_info *info = &priv->survey[chan->hw_value];


  info->channel_time = 0;
  info->channel_time_busy = 0;
  info->channel_time_tx = 0;
 }

 priv->update_stats = 1;
 priv->survey_raw.active = 0;
 priv->survey_raw.cca = 0;
 priv->survey_raw.tx = 0;
}
