
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;





 int sif_probe (struct gspca_dev*) ;
 int vga_2wr_probe (struct gspca_dev*) ;
 int vga_3wr_probe (struct gspca_dev*) ;

__attribute__((used)) static int zcxx_probeSensor(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int sensor;

 switch (sd->sensor) {
 case 129:
  return -1;
 case 130:

  return -1;
 case 128:
  sensor = sif_probe(gspca_dev);
  if (sensor >= 0)
   return sensor;
  break;
 }
 sensor = vga_2wr_probe(gspca_dev);
 if (sensor >= 0)
  return sensor;
 return vga_3wr_probe(gspca_dev);
}
