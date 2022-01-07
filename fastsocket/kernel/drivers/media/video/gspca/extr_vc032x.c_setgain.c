
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int gain; } ;
struct gspca_dev {int ctrl_dis; } ;


 int GAIN_IDX ;
 int i2c_write (struct gspca_dev*,int,int *,int) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (gspca_dev->ctrl_dis & (1 << GAIN_IDX))
  return;
 i2c_write(gspca_dev, 0x15, &sd->gain, 1);
}
