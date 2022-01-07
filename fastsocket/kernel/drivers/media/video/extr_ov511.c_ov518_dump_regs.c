
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 int dump_reg_range (struct usb_ov511*,int,int) ;

__attribute__((used)) static void
ov518_dump_regs(struct usb_ov511 *ov)
{
 dev_info(&ov->dev->dev, "VIDEO MODE REGS\n");
 dump_reg_range(ov, 0x20, 0x2f);
 dev_info(&ov->dev->dev, "DATA PUMP AND SNAPSHOT REGS\n");
 dump_reg_range(ov, 0x30, 0x3f);
 dev_info(&ov->dev->dev, "I2C REGS\n");
 dump_reg_range(ov, 0x40, 0x4f);
 dev_info(&ov->dev->dev, "SYSTEM CONTROL AND VENDOR REGS\n");
 dump_reg_range(ov, 0x50, 0x5f);
 dev_info(&ov->dev->dev, "60 - 6F\n");
 dump_reg_range(ov, 0x60, 0x6f);
 dev_info(&ov->dev->dev, "70 - 7F\n");
 dump_reg_range(ov, 0x70, 0x7f);
 dev_info(&ov->dev->dev, "Y QUANTIZATION TABLE\n");
 dump_reg_range(ov, 0x80, 0x8f);
 dev_info(&ov->dev->dev, "UV QUANTIZATION TABLE\n");
 dump_reg_range(ov, 0x90, 0x9f);
 dev_info(&ov->dev->dev, "A0 - BF\n");
 dump_reg_range(ov, 0xa0, 0xbf);
 dev_info(&ov->dev->dev, "CBR\n");
 dump_reg_range(ov, 0xc0, 0xcf);
}
