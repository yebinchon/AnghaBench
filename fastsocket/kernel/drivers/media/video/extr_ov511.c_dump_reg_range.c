
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,int,int) ;
 int reg_r (struct usb_ov511*,int) ;

__attribute__((used)) static void
dump_reg_range(struct usb_ov511 *ov, int reg1, int regn)
{
 int i, rc;

 for (i = reg1; i <= regn; i++) {
  rc = reg_r(ov, i);
  dev_info(&ov->dev->dev, "OV511[0x%02X] = 0x%02X\n", i, rc);
 }
}
