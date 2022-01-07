
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int flags; } ;


 int DEVICE_STATE_ENABLED_RADIO ;
 int M2H_CMD_DONE_CSR ;
 int MCU_INT_MASK_CSR_TWAKEUP ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;
 int rt61pci_enable_mcu_interrupt (struct rt2x00_dev*,int ) ;
 int rt61pci_wakeup (struct rt2x00_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rt61pci_autowake_tasklet(unsigned long data)
{
 struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;
 rt61pci_wakeup(rt2x00dev);
 rt2x00mmio_register_write(rt2x00dev,
      M2H_CMD_DONE_CSR, 0xffffffff);
 if (test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  rt61pci_enable_mcu_interrupt(rt2x00dev, MCU_INT_MASK_CSR_TWAKEUP);
}
