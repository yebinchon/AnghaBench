
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int valid; int rfover; int rfoverval; } ;
struct b43legacy_phy {int radio_on; int type; int channel; TYPE_1__ radio_off_context; int gmode; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;


 int B43legacy_BUG_ON (int) ;


 int B43legacy_PHY_RFOVER ;
 int B43legacy_PHY_RFOVERVAL ;
 int B43legacy_RADIO_DEFAULT_CHANNEL_BG ;
 int B43legacy_WARN_ON (int) ;
 int b43legacy_phy_write (struct b43legacy_wldev*,int,int) ;
 int b43legacy_radio_selectchannel (struct b43legacy_wldev*,int ,int) ;
 int might_sleep () ;

void b43legacy_radio_turn_on(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;
 int err;
 u8 channel;

 might_sleep();

 if (phy->radio_on)
  return;

 switch (phy->type) {
 case 129:
 case 128:
  b43legacy_phy_write(dev, 0x0015, 0x8000);
  b43legacy_phy_write(dev, 0x0015, 0xCC00);
  b43legacy_phy_write(dev, 0x0015,
        (phy->gmode ? 0x00C0 : 0x0000));
  if (phy->radio_off_context.valid) {

   b43legacy_phy_write(dev, B43legacy_PHY_RFOVER,
         phy->radio_off_context.rfover);
   b43legacy_phy_write(dev, B43legacy_PHY_RFOVERVAL,
         phy->radio_off_context.rfoverval);
   phy->radio_off_context.valid = 0;
  }
  channel = phy->channel;
  err = b43legacy_radio_selectchannel(dev,
     B43legacy_RADIO_DEFAULT_CHANNEL_BG, 1);
  err |= b43legacy_radio_selectchannel(dev, channel, 0);
  B43legacy_WARN_ON(err);
  break;
 default:
  B43legacy_BUG_ON(1);
 }
 phy->radio_on = 1;
}
