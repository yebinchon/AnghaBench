
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 int dump_i2c_range (struct usb_ov511*,int,int) ;

__attribute__((used)) static void
dump_i2c_regs(struct usb_ov511 *ov)
{
 dev_info(&ov->dev->dev, "I2C REGS\n");
 dump_i2c_range(ov, 0x00, 0x7C);
}
