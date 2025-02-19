
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int PWR_PIN_CFG ;
 int TX_PIN_CFG ;
 int rt2800_disable_radio (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_is_soc (struct rt2x00_dev*) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2800pci_disable_radio(struct rt2x00_dev *rt2x00dev)
{
 if (rt2x00_is_soc(rt2x00dev)) {
  rt2800_disable_radio(rt2x00dev);
  rt2x00mmio_register_write(rt2x00dev, PWR_PIN_CFG, 0);
  rt2x00mmio_register_write(rt2x00dev, TX_PIN_CFG, 0);
 }
}
