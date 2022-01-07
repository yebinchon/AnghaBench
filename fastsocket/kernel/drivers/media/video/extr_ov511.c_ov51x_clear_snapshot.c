
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {scalar_t__ bclass; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BCL_OV511 ;
 scalar_t__ BCL_OV518 ;
 int R51x_SYS_SNAP ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int reg_w (struct usb_ov511*,int ,int) ;

__attribute__((used)) static void
ov51x_clear_snapshot(struct usb_ov511 *ov)
{
 if (ov->bclass == BCL_OV511) {
  reg_w(ov, R51x_SYS_SNAP, 0x00);
  reg_w(ov, R51x_SYS_SNAP, 0x02);
  reg_w(ov, R51x_SYS_SNAP, 0x00);
 } else if (ov->bclass == BCL_OV518) {
  dev_warn(&ov->dev->dev,
    "snapshot reset not supported yet on OV518(+)\n");
 } else {
  dev_err(&ov->dev->dev, "clear snap: invalid bridge type\n");
 }
}
