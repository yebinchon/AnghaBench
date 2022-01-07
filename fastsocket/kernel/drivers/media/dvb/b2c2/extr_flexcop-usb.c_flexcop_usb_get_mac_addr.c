
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proposed_mac; } ;
struct flexcop_device {TYPE_1__ dvb_adapter; int bus_specific; } ;


 int B2C2_USB_READ_V8_MEM ;
 int V8_MEMORY_PAGE_FLASH ;
 int flexcop_usb_memory_req (int ,int ,int ,int,int,int ,int) ;

__attribute__((used)) static int flexcop_usb_get_mac_addr(struct flexcop_device *fc, int extended)
{
 return flexcop_usb_memory_req(fc->bus_specific, B2C2_USB_READ_V8_MEM,
  V8_MEMORY_PAGE_FLASH, 0x1f010, 1,
  fc->dvb_adapter.proposed_mac, 6);
}
