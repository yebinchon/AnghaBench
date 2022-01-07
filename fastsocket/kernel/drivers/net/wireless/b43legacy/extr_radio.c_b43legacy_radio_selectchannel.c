
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct b43legacy_phy {int type; int channel; } ;
struct b43legacy_wldev {TYPE_3__* dev; struct b43legacy_phy phy; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_4__ {int country_code; } ;
struct TYPE_5__ {TYPE_1__ sprom; } ;


 int B43legacy_MMIO_CHANNEL ;
 int B43legacy_MMIO_CHANNEL_EXT ;


 int B43legacy_RADIO_DEFAULT_CHANNEL_BG ;
 int B43legacy_SHM_SHARED ;
 int B43legacy_UCODEFLAGS_OFFSET ;
 int B43legacy_WARN_ON (int) ;
 int b43legacy_read16 (struct b43legacy_wldev*,int ) ;
 int b43legacy_shm_read32 (struct b43legacy_wldev*,int ,int ) ;
 int b43legacy_shm_write32 (struct b43legacy_wldev*,int ,int ,int) ;
 int b43legacy_synth_pu_workaround (struct b43legacy_wldev*,int) ;
 int b43legacy_write16 (struct b43legacy_wldev*,int ,int) ;
 int channel2freq_bg (int) ;
 int msleep (int) ;

int b43legacy_radio_selectchannel(struct b43legacy_wldev *dev,
      u8 channel,
      int synthetic_pu_workaround)
{
 struct b43legacy_phy *phy = &dev->phy;

 if (channel == 0xFF) {
  switch (phy->type) {
  case 129:
  case 128:
   channel = B43legacy_RADIO_DEFAULT_CHANNEL_BG;
   break;
  default:
   B43legacy_WARN_ON(1);
  }
 }


 if (synthetic_pu_workaround)
  b43legacy_synth_pu_workaround(dev, channel);

 b43legacy_write16(dev, B43legacy_MMIO_CHANNEL,
     channel2freq_bg(channel));

 if (channel == 14) {
  if (dev->dev->bus->sprom.country_code == 5)
   b43legacy_shm_write32(dev, B43legacy_SHM_SHARED,
           B43legacy_UCODEFLAGS_OFFSET,
           b43legacy_shm_read32(dev,
           B43legacy_SHM_SHARED,
           B43legacy_UCODEFLAGS_OFFSET)
           & ~(1 << 7));
  else
   b43legacy_shm_write32(dev, B43legacy_SHM_SHARED,
           B43legacy_UCODEFLAGS_OFFSET,
           b43legacy_shm_read32(dev,
           B43legacy_SHM_SHARED,
           B43legacy_UCODEFLAGS_OFFSET)
           | (1 << 7));
  b43legacy_write16(dev, B43legacy_MMIO_CHANNEL_EXT,
      b43legacy_read16(dev,
      B43legacy_MMIO_CHANNEL_EXT) | (1 << 11));
 } else
  b43legacy_write16(dev, B43legacy_MMIO_CHANNEL_EXT,
      b43legacy_read16(dev,
      B43legacy_MMIO_CHANNEL_EXT) & 0xF7BF);

 phy->channel = channel;


 msleep(8);

 return 0;
}
