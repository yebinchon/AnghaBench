
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int colors; } ;
struct gspca_dev {int ctrl_dis; } ;


 int COLORS_IDX ;
 int i2c_write (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void setcolors(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 data;

 if (gspca_dev->ctrl_dis & (1 << COLORS_IDX))
  return;
 data = sd->colors - (sd->colors >> 3) - 1;
 i2c_write(gspca_dev, 0x94, &data, 1);
 i2c_write(gspca_dev, 0x95, &sd->colors, 1);
}
