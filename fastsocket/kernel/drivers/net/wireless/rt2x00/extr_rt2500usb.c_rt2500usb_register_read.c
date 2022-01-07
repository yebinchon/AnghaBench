
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_dev {int dummy; } ;
typedef int reg ;
typedef int __le16 ;


 int REGISTER_TIMEOUT ;
 int USB_MULTI_READ ;
 int USB_VENDOR_REQUEST_IN ;
 int le16_to_cpu (int ) ;
 int rt2x00usb_vendor_request_buff (struct rt2x00_dev*,int ,int ,unsigned int const,int *,int,int ) ;

__attribute__((used)) static inline void rt2500usb_register_read(struct rt2x00_dev *rt2x00dev,
        const unsigned int offset,
        u16 *value)
{
 __le16 reg;
 rt2x00usb_vendor_request_buff(rt2x00dev, USB_MULTI_READ,
          USB_VENDOR_REQUEST_IN, offset,
          &reg, sizeof(reg), REGISTER_TIMEOUT);
 *value = le16_to_cpu(reg);
}
