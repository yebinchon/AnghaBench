
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_dev {int dummy; } ;
typedef int __le16 ;


 int REGISTER_TIMEOUT16 (int const) ;
 int USB_EEPROM_READ ;
 int USB_VENDOR_REQUEST_IN ;
 int rt2x00usb_vendor_request (struct rt2x00_dev*,int ,int ,int ,int ,int *,int const,int ) ;

__attribute__((used)) static inline int rt2x00usb_eeprom_read(struct rt2x00_dev *rt2x00dev,
     __le16 *eeprom, const u16 length)
{
 return rt2x00usb_vendor_request(rt2x00dev, USB_EEPROM_READ,
     USB_VENDOR_REQUEST_IN, 0, 0,
     eeprom, length,
     REGISTER_TIMEOUT16(length));
}
