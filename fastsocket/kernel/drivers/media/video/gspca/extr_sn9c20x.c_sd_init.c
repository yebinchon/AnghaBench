
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int i2c_addr; int flags; int sensor; } ;
struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (int**) ;
 int ENODEV ;
 int LED_REVERSE ;
 int** bridge_init ;
 int err (char*) ;
 int hv7131r_init_sensor (struct gspca_dev*) ;
 int info (char*) ;
 int mt9m001_init_sensor (struct gspca_dev*) ;
 int mt9m111_init_sensor (struct gspca_dev*) ;
 int mt9m112_init_sensor (struct gspca_dev*) ;
 int mt9v_init_sensor (struct gspca_dev*) ;
 int ov7660_init_sensor (struct gspca_dev*) ;
 int ov7670_init_sensor (struct gspca_dev*) ;
 int ov9650_init_sensor (struct gspca_dev*) ;
 int ov9655_init_sensor (struct gspca_dev*) ;
 scalar_t__ reg_w (struct gspca_dev*,int,int*,int) ;
 int reg_w1 (struct gspca_dev*,int,int) ;
 int soi968_init_sensor (struct gspca_dev*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i;
 u8 value;
 u8 i2c_init[9] =
  {0x80, sd->i2c_addr, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03};

 for (i = 0; i < ARRAY_SIZE(bridge_init); i++) {
  value = bridge_init[i][1];
  if (reg_w(gspca_dev, bridge_init[i][0], &value, 1) < 0) {
   err("Device initialization failed");
   return -ENODEV;
  }
 }

 if (sd->flags & LED_REVERSE)
  reg_w1(gspca_dev, 0x1006, 0x00);
 else
  reg_w1(gspca_dev, 0x1006, 0x20);

 if (reg_w(gspca_dev, 0x10c0, i2c_init, 9) < 0) {
  err("Device initialization failed");
  return -ENODEV;
 }

 switch (sd->sensor) {
 case 130:
  if (ov9650_init_sensor(gspca_dev) < 0)
   return -ENODEV;
  info("OV9650 sensor detected");
  break;
 case 129:
  if (ov9655_init_sensor(gspca_dev) < 0)
   return -ENODEV;
  info("OV9655 sensor detected");
  break;
 case 128:
  if (soi968_init_sensor(gspca_dev) < 0)
   return -ENODEV;
  info("SOI968 sensor detected");
  break;
 case 132:
  if (ov7660_init_sensor(gspca_dev) < 0)
   return -ENODEV;
  info("OV7660 sensor detected");
  break;
 case 131:
  if (ov7670_init_sensor(gspca_dev) < 0)
   return -ENODEV;
  info("OV7670 sensor detected");
  break;
 case 133:
  if (mt9v_init_sensor(gspca_dev) < 0)
   return -ENODEV;
  break;
 case 135:
  if (mt9m111_init_sensor(gspca_dev) < 0)
   return -ENODEV;
  info("MT9M111 sensor detected");
  break;
 case 134:
  if (mt9m112_init_sensor(gspca_dev) < 0)
   return -ENODEV;
  info("MT9M112 sensor detected");
  break;
 case 136:
  if (mt9m001_init_sensor(gspca_dev) < 0)
   return -ENODEV;
  break;
 case 137:
  if (hv7131r_init_sensor(gspca_dev) < 0)
   return -ENODEV;
  info("HV7131R sensor detected");
  break;
 default:
  info("Unsupported Sensor");
  return -ENODEV;
 }

 return 0;
}
