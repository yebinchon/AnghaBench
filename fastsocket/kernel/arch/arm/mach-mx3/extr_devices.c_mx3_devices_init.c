
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* end; void* start; } ;
struct TYPE_5__ {void* end; void* start; } ;
struct TYPE_4__ {void* end; void* start; } ;


 void* MX31_NFC_BASE_ADDR ;
 void* MX35_NFC_BASE_ADDR ;
 void* MX35_OTG_BASE_ADDR ;
 void* MXC_INT_USBHS ;
 void* MXC_INT_USBOTG ;
 scalar_t__ cpu_is_mx31 () ;
 scalar_t__ cpu_is_mx35 () ;
 TYPE_3__* mxc_nand_resources ;
 int mxc_register_device (int *,int *) ;
 int mxc_rnga_device ;
 TYPE_2__* mxc_usbh1_resources ;
 TYPE_1__* otg_resources ;

__attribute__((used)) static int mx3_devices_init(void)
{
 if (cpu_is_mx31()) {
  mxc_nand_resources[0].start = MX31_NFC_BASE_ADDR;
  mxc_nand_resources[0].end = MX31_NFC_BASE_ADDR + 0xfff;
  mxc_register_device(&mxc_rnga_device, ((void*)0));
 }
 if (cpu_is_mx35()) {
  mxc_nand_resources[0].start = MX35_NFC_BASE_ADDR;
  mxc_nand_resources[0].end = MX35_NFC_BASE_ADDR + 0xfff;
  otg_resources[0].start = MX35_OTG_BASE_ADDR;
  otg_resources[0].end = MX35_OTG_BASE_ADDR + 0x1ff;
  otg_resources[1].start = MXC_INT_USBOTG;
  otg_resources[1].end = MXC_INT_USBOTG;
  mxc_usbh1_resources[0].start = MX35_OTG_BASE_ADDR + 0x400;
  mxc_usbh1_resources[0].end = MX35_OTG_BASE_ADDR + 0x5ff;
  mxc_usbh1_resources[1].start = MXC_INT_USBHS;
  mxc_usbh1_resources[1].end = MXC_INT_USBHS;
 }

 return 0;
}
