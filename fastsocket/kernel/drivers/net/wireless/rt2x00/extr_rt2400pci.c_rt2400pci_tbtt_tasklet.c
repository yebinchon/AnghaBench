
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int flags; } ;


 int CSR8_TBCN_EXPIRE ;
 int DEVICE_STATE_ENABLED_RADIO ;
 int rt2400pci_enable_interrupt (struct rt2x00_dev*,int ) ;
 int rt2x00lib_beacondone (struct rt2x00_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rt2400pci_tbtt_tasklet(unsigned long data)
{
 struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;
 rt2x00lib_beacondone(rt2x00dev);
 if (test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  rt2400pci_enable_interrupt(rt2x00dev, CSR8_TBCN_EXPIRE);
}
