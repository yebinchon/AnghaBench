
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
typedef int reg ;
typedef int __le32 ;


 int REGISTER_TIMEOUT ;
 int USB_MULTI_WRITE ;
 int USB_VENDOR_REQUEST_OUT ;
 int cpu_to_le32 (int ) ;
 int rt2x00usb_vendor_request_buff (struct rt2x00_dev*,int ,int ,unsigned int const,int *,int,int ) ;

__attribute__((used)) static inline void rt2x00usb_register_write(struct rt2x00_dev *rt2x00dev,
         const unsigned int offset,
         u32 value)
{
 __le32 reg = cpu_to_le32(value);
 rt2x00usb_vendor_request_buff(rt2x00dev, USB_MULTI_WRITE,
          USB_VENDOR_REQUEST_OUT, offset,
          &reg, sizeof(reg), REGISTER_TIMEOUT);
}
