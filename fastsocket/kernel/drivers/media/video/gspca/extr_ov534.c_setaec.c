
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ aec; } ;
struct gspca_dev {int dummy; } ;


 int sccb_reg_read (struct gspca_dev*,int) ;
 int sccb_reg_write (struct gspca_dev*,int,int) ;
 int setexposure (struct gspca_dev*) ;

__attribute__((used)) static void setaec(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->aec)
  sccb_reg_write(gspca_dev, 0x13,
    sccb_reg_read(gspca_dev, 0x13) | 0x01);
 else {
  sccb_reg_write(gspca_dev, 0x13,
    sccb_reg_read(gspca_dev, 0x13) & ~0x01);
  setexposure(gspca_dev);
 }
}
