
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int exposure; } ;
struct gspca_dev {int ctrl_dis; } ;


 int EXPOSURE_IDX ;
 int i2c_write (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 data;

 if (gspca_dev->ctrl_dis & (1 << EXPOSURE_IDX))
  return;
 data = sd->exposure >> 8;
 i2c_write(gspca_dev, 0x1a, &data, 1);
 data = sd->exposure;
 i2c_write(gspca_dev, 0x1b, &data, 1);
}
