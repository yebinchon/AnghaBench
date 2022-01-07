
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int PWRCSR0 ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2500pci_disable_radio(struct rt2x00_dev *rt2x00dev)
{



 rt2x00mmio_register_write(rt2x00dev, PWRCSR0, 0);
}
