
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int contrast; } ;
struct gspca_dev {int ctrl_dis; } ;


 int CONTRAST_IDX ;
 int sensor_write1 (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (gspca_dev->ctrl_dis & (1 << CONTRAST_IDX))
  return;

 sensor_write1(gspca_dev, 0x1c, sd->contrast);
}
