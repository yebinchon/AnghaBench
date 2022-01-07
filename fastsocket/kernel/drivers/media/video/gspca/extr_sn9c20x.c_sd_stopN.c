
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;


 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 reg_w1(gspca_dev, 0x1007, 0x00);

 reg_r(gspca_dev, 0x1061, 1);
 reg_w1(gspca_dev, 0x1061, gspca_dev->usb_buf[0] & ~0x02);
}
