
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct rf_channel {int const rf3; int channel; int const rf4; int const rf1; int const rf2; } ;


 int RF2525E ;
 int RF3_TXPOWER ;
 int TXPOWER_TO_DEV (int const) ;
 int rt2500usb_rf_write (struct rt2x00_dev*,int,int const) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field32 (int const*,int ,int ) ;

__attribute__((used)) static void rt2500usb_config_channel(struct rt2x00_dev *rt2x00dev,
         struct rf_channel *rf, const int txpower)
{



 rt2x00_set_field32(&rf->rf3, RF3_TXPOWER, TXPOWER_TO_DEV(txpower));




 if (rt2x00_rf(rt2x00dev, RF2525E)) {
  static const u32 vals[] = {
   0x000008aa, 0x000008ae, 0x000008ae, 0x000008b2,
   0x000008b2, 0x000008b6, 0x000008b6, 0x000008ba,
   0x000008ba, 0x000008be, 0x000008b7, 0x00000902,
   0x00000902, 0x00000906
  };

  rt2500usb_rf_write(rt2x00dev, 2, vals[rf->channel - 1]);
  if (rf->rf4)
   rt2500usb_rf_write(rt2x00dev, 4, rf->rf4);
 }

 rt2500usb_rf_write(rt2x00dev, 1, rf->rf1);
 rt2500usb_rf_write(rt2x00dev, 2, rf->rf2);
 rt2500usb_rf_write(rt2x00dev, 3, rf->rf3);
 if (rf->rf4)
  rt2500usb_rf_write(rt2x00dev, 4, rf->rf4);
}
