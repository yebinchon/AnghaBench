
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_dev {int dummy; } ;


 int MAC_CSR19 ;
 int MAC_CSR19_VAL7 ;
 int rt2500usb_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00_get_field16 (int ,int ) ;

__attribute__((used)) static int rt2500usb_rfkill_poll(struct rt2x00_dev *rt2x00dev)
{
 u16 reg;

 rt2500usb_register_read(rt2x00dev, MAC_CSR19, &reg);
 return rt2x00_get_field16(reg, MAC_CSR19_VAL7);
}
