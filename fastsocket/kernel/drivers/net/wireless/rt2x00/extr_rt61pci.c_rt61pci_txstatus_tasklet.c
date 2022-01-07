
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int flags; } ;


 int DEVICE_STATE_ENABLED_RADIO ;
 int INT_MASK_CSR_TXDONE ;
 int rt61pci_enable_interrupt (struct rt2x00_dev*,int ) ;
 int rt61pci_txdone (struct rt2x00_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rt61pci_txstatus_tasklet(unsigned long data)
{
 struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;
 rt61pci_txdone(rt2x00dev);
 if (test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  rt61pci_enable_interrupt(rt2x00dev, INT_MASK_CSR_TXDONE);
}
