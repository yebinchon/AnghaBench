
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int MAC_CSR13 ;
 int MAC_CSR14 ;
 int TXRX_CSR19 ;
 int rt2500usb_register_write (struct rt2x00_dev*,int ,int) ;
 int rt2x00usb_disable_radio (struct rt2x00_dev*) ;

__attribute__((used)) static void rt2500usb_disable_radio(struct rt2x00_dev *rt2x00dev)
{
 rt2500usb_register_write(rt2x00dev, MAC_CSR13, 0x2121);
 rt2500usb_register_write(rt2x00dev, MAC_CSR14, 0x2121);




 rt2500usb_register_write(rt2x00dev, TXRX_CSR19, 0);

 rt2x00usb_disable_radio(rt2x00dev);
}
