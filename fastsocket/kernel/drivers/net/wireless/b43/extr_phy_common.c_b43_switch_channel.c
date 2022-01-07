
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct b43_phy {unsigned int channel; TYPE_1__* ops; } ;
struct b43_wldev {struct b43_phy phy; int wl; } ;
struct TYPE_2__ {unsigned int (* get_default_chan ) (struct b43_wldev*) ;int (* switch_channel ) (struct b43_wldev*,unsigned int) ;} ;


 unsigned int B43_DEFAULT_CHANNEL ;
 int B43_SHM_SHARED ;
 int B43_SHM_SH_CHAN ;
 unsigned int B43_SHM_SH_CHAN_40MHZ ;
 unsigned int B43_SHM_SH_CHAN_5GHZ ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 scalar_t__ b43_current_band (int ) ;
 unsigned int b43_shm_read16 (struct b43_wldev*,int ,int ) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int ,unsigned int) ;
 int msleep (int) ;
 unsigned int stub1 (struct b43_wldev*) ;
 int stub2 (struct b43_wldev*,unsigned int) ;

int b43_switch_channel(struct b43_wldev *dev, unsigned int new_channel)
{
 struct b43_phy *phy = &(dev->phy);
 u16 channelcookie, savedcookie;
 int err;

 if (new_channel == B43_DEFAULT_CHANNEL)
  new_channel = phy->ops->get_default_chan(dev);




 channelcookie = new_channel;
 if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ)
  channelcookie |= B43_SHM_SH_CHAN_5GHZ;

 if (0)
  channelcookie |= B43_SHM_SH_CHAN_40MHZ;
 savedcookie = b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_CHAN);
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_CHAN, channelcookie);


 err = phy->ops->switch_channel(dev, new_channel);
 if (err)
  goto err_restore_cookie;

 dev->phy.channel = new_channel;

 msleep(8);

 return 0;

err_restore_cookie:
 b43_shm_write16(dev, B43_SHM_SHARED,
   B43_SHM_SH_CHAN, savedcookie);

 return err;
}
