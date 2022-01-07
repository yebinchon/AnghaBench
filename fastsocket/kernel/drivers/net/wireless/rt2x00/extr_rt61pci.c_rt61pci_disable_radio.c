
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int MAC_CSR10 ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;

__attribute__((used)) static void rt61pci_disable_radio(struct rt2x00_dev *rt2x00dev)
{



 rt2x00mmio_register_write(rt2x00dev, MAC_CSR10, 0x00001818);
}
