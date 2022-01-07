
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int * usb_buf; } ;


 int D_PROBE ;
 int PDEBUG (int ,char*,int ,int ) ;
 int reg_r (struct gspca_dev*,int ,int) ;
 int reg_w (struct gspca_dev*,int ,int) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{

 reg_r(gspca_dev, 0, 0x10);
 PDEBUG(D_PROBE, "Reg 0x10 reads: %02x %02x",
        gspca_dev->usb_buf[0], gspca_dev->usb_buf[1]);
 reg_r(gspca_dev, 0, 0x10);
 PDEBUG(D_PROBE, "Reg 0x10 reads: %02x %02x",
        gspca_dev->usb_buf[0], gspca_dev->usb_buf[1]);
 reg_w(gspca_dev, 0, 0x0d);

 return 0;
}
