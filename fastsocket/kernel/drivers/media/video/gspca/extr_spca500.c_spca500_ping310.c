
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int * usb_buf; } ;


 int D_STREAM ;
 int PDEBUG (int ,char*,int ,int ) ;
 int reg_r (struct gspca_dev*,int,int) ;

__attribute__((used)) static void spca500_ping310(struct gspca_dev *gspca_dev)
{
 reg_r(gspca_dev, 0x0d04, 2);
 PDEBUG(D_STREAM, "ClickSmart310 ping 0x0d04 0x%02x 0x%02x",
  gspca_dev->usb_buf[0], gspca_dev->usb_buf[1]);
}
