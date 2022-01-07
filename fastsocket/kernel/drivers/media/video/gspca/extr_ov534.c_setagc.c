
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ agc; } ;
struct gspca_dev {int dummy; } ;


 int sccb_reg_read (struct gspca_dev*,int) ;
 int sccb_reg_write (struct gspca_dev*,int,int) ;
 int setgain (struct gspca_dev*) ;

__attribute__((used)) static void setagc(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->agc) {
  sccb_reg_write(gspca_dev, 0x13,
    sccb_reg_read(gspca_dev, 0x13) | 0x04);
  sccb_reg_write(gspca_dev, 0x64,
    sccb_reg_read(gspca_dev, 0x64) | 0x03);
 } else {
  sccb_reg_write(gspca_dev, 0x13,
    sccb_reg_read(gspca_dev, 0x13) & ~0x04);
  sccb_reg_write(gspca_dev, 0x64,
    sccb_reg_read(gspca_dev, 0x64) & ~0x03);

  setgain(gspca_dev);
 }
}
