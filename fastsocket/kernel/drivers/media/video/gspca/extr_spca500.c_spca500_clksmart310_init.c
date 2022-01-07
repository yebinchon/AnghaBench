
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int * usb_buf; } ;


 int D_STREAM ;
 int PDEBUG (int ,char*,int ,int ) ;
 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w (struct gspca_dev*,int,int,int) ;
 int spca500_ping310 (struct gspca_dev*) ;

__attribute__((used)) static void spca500_clksmart310_init(struct gspca_dev *gspca_dev)
{
 reg_r(gspca_dev, 0x0d05, 2);
 PDEBUG(D_STREAM, "ClickSmart310 init 0x0d05 0x%02x 0x%02x",
  gspca_dev->usb_buf[0], gspca_dev->usb_buf[1]);
 reg_w(gspca_dev, 0x00, 0x8167, 0x5a);
 spca500_ping310(gspca_dev);

 reg_w(gspca_dev, 0x00, 0x8168, 0x22);
 reg_w(gspca_dev, 0x00, 0x816a, 0xc0);
 reg_w(gspca_dev, 0x00, 0x816b, 0x0b);
 reg_w(gspca_dev, 0x00, 0x8169, 0x25);
 reg_w(gspca_dev, 0x00, 0x8157, 0x5b);
 reg_w(gspca_dev, 0x00, 0x8158, 0x5b);
 reg_w(gspca_dev, 0x00, 0x813f, 0x03);
 reg_w(gspca_dev, 0x00, 0x8151, 0x4a);
 reg_w(gspca_dev, 0x00, 0x8153, 0x78);
 reg_w(gspca_dev, 0x00, 0x0d01, 0x04);

 reg_w(gspca_dev, 0x00, 0x0d02, 0x01);
 reg_w(gspca_dev, 0x00, 0x8169, 0x25);
 reg_w(gspca_dev, 0x00, 0x0d01, 0x02);
}
