
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct survey_info {scalar_t__ channel_time; int filled; } ;
struct p54_common {int chan_num; int * survey; int conf_mutex; struct ieee80211_channel* curchan; } ;
struct ieee80211_hw {struct p54_common* priv; } ;
struct ieee80211_channel {int hw_value; } ;


 int ENOENT ;
 int ETIMEDOUT ;
 int MAX_TRIES ;
 int SURVEY_INFO_IN_USE ;
 int memcpy (struct survey_info*,int *,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p54_wait_for_stats (struct ieee80211_hw*) ;

__attribute__((used)) static int p54_get_survey(struct ieee80211_hw *dev, int idx,
    struct survey_info *survey)
{
 struct p54_common *priv = dev->priv;
 struct ieee80211_channel *chan;
 int err, tries;
 bool in_use = 0;

 if (idx >= priv->chan_num)
  return -ENOENT;


 for (tries = 0; tries < 1; tries++) {
  chan = priv->curchan;
  if (chan && chan->hw_value == idx) {
   mutex_lock(&priv->conf_mutex);
   err = p54_wait_for_stats(dev);
   mutex_unlock(&priv->conf_mutex);
   if (err)
    return err;

   in_use = 1;
  }

  memcpy(survey, &priv->survey[idx], sizeof(*survey));

  if (in_use) {

   if (survey->channel_time != 0) {
    survey->filled |= SURVEY_INFO_IN_USE;
   } else {






    msleep(100);
    continue;
   }
  }
  return 0;
 }
 return -ETIMEDOUT;

}
