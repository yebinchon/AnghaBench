
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
struct rf_channel {int rf1; int rf3; int rf2; } ;


 int CNT0 ;
 int RF1_TUNER ;
 int RF2420 ;
 int RF3_TUNER ;
 int msleep (int) ;
 int rt2400pci_rf_write (struct rt2x00_dev*,int,int) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int*) ;

__attribute__((used)) static void rt2400pci_config_channel(struct rt2x00_dev *rt2x00dev,
         struct rf_channel *rf)
{



 rt2x00_set_field32(&rf->rf1, RF1_TUNER, 1);
 rt2x00_set_field32(&rf->rf3, RF3_TUNER, 1);

 rt2400pci_rf_write(rt2x00dev, 1, rf->rf1);
 rt2400pci_rf_write(rt2x00dev, 2, rf->rf2);
 rt2400pci_rf_write(rt2x00dev, 3, rf->rf3);




 if (rt2x00_rf(rt2x00dev, RF2420))
  return;






 rt2400pci_rf_write(rt2x00dev, 1, rf->rf1);
 rt2400pci_rf_write(rt2x00dev, 2, 0x000c2a32);
 rt2400pci_rf_write(rt2x00dev, 3, rf->rf3);

 msleep(1);

 rt2400pci_rf_write(rt2x00dev, 1, rf->rf1);
 rt2400pci_rf_write(rt2x00dev, 2, rf->rf2);
 rt2400pci_rf_write(rt2x00dev, 3, rf->rf3);

 msleep(1);




 rt2x00_set_field32(&rf->rf1, RF1_TUNER, 0);
 rt2x00_set_field32(&rf->rf3, RF3_TUNER, 0);

 rt2400pci_rf_write(rt2x00dev, 1, rf->rf1);
 rt2400pci_rf_write(rt2x00dev, 3, rf->rf3);




 rt2x00mmio_register_read(rt2x00dev, CNT0, &rf->rf1);
}
