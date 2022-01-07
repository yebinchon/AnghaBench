
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int present; } ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sd_stop0(struct gspca_dev *gspca_dev)
{
 if (!gspca_dev->present)
  return;
 reg_w(gspca_dev, 0xff, 0x01);
 reg_w(gspca_dev, 0x78, 0x40);
}
