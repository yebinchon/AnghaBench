
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int REGISTER_TIMEOUT32 (int const) ;
 int USB_MULTI_WRITE ;
 int USB_VENDOR_REQUEST_OUT ;
 int rt2x00usb_vendor_request_buff (struct rt2x00_dev*,int ,int ,unsigned int const,void*,int const,int ) ;

__attribute__((used)) static inline void rt2x00usb_register_multiwrite(struct rt2x00_dev *rt2x00dev,
       const unsigned int offset,
       const void *value,
       const u32 length)
{
 rt2x00usb_vendor_request_buff(rt2x00dev, USB_MULTI_WRITE,
          USB_VENDOR_REQUEST_OUT, offset,
          (void *)value, length,
          REGISTER_TIMEOUT32(length));
}
