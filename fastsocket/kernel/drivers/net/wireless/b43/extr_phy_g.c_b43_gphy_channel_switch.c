
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_wldev {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {scalar_t__ country_code; } ;


 int B43_HF_ACPR ;
 int B43_MMIO_CHANNEL ;
 int B43_MMIO_CHANNEL_EXT ;
 scalar_t__ SSB_SPROM1CCODE_JAPAN ;
 int b43_hf_read (struct b43_wldev*) ;
 int b43_hf_write (struct b43_wldev*,int) ;
 int b43_read16 (struct b43_wldev*,int ) ;
 int b43_synth_pu_workaround (struct b43_wldev*,unsigned int) ;
 int b43_write16 (struct b43_wldev*,int ,int) ;
 int channel2freq_bg (unsigned int) ;

void b43_gphy_channel_switch(struct b43_wldev *dev,
        unsigned int channel,
        bool synthetic_pu_workaround)
{
 if (synthetic_pu_workaround)
  b43_synth_pu_workaround(dev, channel);

 b43_write16(dev, B43_MMIO_CHANNEL, channel2freq_bg(channel));

 if (channel == 14) {
  if (dev->dev->bus_sprom->country_code ==
      SSB_SPROM1CCODE_JAPAN)
   b43_hf_write(dev,
         b43_hf_read(dev) & ~B43_HF_ACPR);
  else
   b43_hf_write(dev,
         b43_hf_read(dev) | B43_HF_ACPR);
  b43_write16(dev, B43_MMIO_CHANNEL_EXT,
       b43_read16(dev, B43_MMIO_CHANNEL_EXT)
       | (1 << 11));
 } else {
  b43_write16(dev, B43_MMIO_CHANNEL_EXT,
       b43_read16(dev, B43_MMIO_CHANNEL_EXT)
       & 0xF7BF);
 }
}
