
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00lib_conf {TYPE_1__* conf; int rf; } ;
struct rt2x00_dev {int dummy; } ;
struct TYPE_2__ {int power_level; } ;


 unsigned int const IEEE80211_CONF_CHANGE_CHANNEL ;
 unsigned int const IEEE80211_CONF_CHANGE_POWER ;
 unsigned int const IEEE80211_CONF_CHANGE_PS ;
 int rt2500usb_config_channel (struct rt2x00_dev*,int *,int ) ;
 int rt2500usb_config_ps (struct rt2x00_dev*,struct rt2x00lib_conf*) ;
 int rt2500usb_config_txpower (struct rt2x00_dev*,int ) ;

__attribute__((used)) static void rt2500usb_config(struct rt2x00_dev *rt2x00dev,
        struct rt2x00lib_conf *libconf,
        const unsigned int flags)
{
 if (flags & IEEE80211_CONF_CHANGE_CHANNEL)
  rt2500usb_config_channel(rt2x00dev, &libconf->rf,
      libconf->conf->power_level);
 if ((flags & IEEE80211_CONF_CHANGE_POWER) &&
     !(flags & IEEE80211_CONF_CHANGE_CHANNEL))
  rt2500usb_config_txpower(rt2x00dev,
      libconf->conf->power_level);
 if (flags & IEEE80211_CONF_CHANGE_PS)
  rt2500usb_config_ps(rt2x00dev, libconf);
}
