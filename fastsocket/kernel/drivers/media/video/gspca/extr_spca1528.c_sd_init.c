
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int usb_err; int * usb_buf; } ;


 int D_PROBE ;
 int PDEBUG (int ,char*,int *,int *) ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_w (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 reg_w(gspca_dev, 0x00, 0x0001, 0x2067);
 reg_w(gspca_dev, 0x00, 0x00d0, 0x206b);
 reg_w(gspca_dev, 0x00, 0x0000, 0x206c);
 reg_w(gspca_dev, 0x00, 0x0001, 0x2069);
 msleep(8);
 reg_w(gspca_dev, 0x00, 0x00c0, 0x206b);
 reg_w(gspca_dev, 0x00, 0x0000, 0x206c);
 reg_w(gspca_dev, 0x00, 0x0001, 0x2069);

 reg_r(gspca_dev, 0x20, 0x0000, 1);
 reg_r(gspca_dev, 0x20, 0x0000, 5);
 reg_r(gspca_dev, 0x23, 0x0000, 64);
 PDEBUG(D_PROBE, "%s%s", &gspca_dev->usb_buf[0x1c],
    &gspca_dev->usb_buf[0x30]);
 reg_r(gspca_dev, 0x23, 0x0001, 64);
 return gspca_dev->usb_err;
}
