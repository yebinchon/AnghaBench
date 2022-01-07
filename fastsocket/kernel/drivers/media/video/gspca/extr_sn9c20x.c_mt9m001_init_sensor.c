
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sd {int hstart; int vstart; } ;
struct gspca_dev {int ctrl_dis; } ;
struct TYPE_3__ {int val; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENODEV ;
 int HFLIP_IDX ;
 int VFLIP_IDX ;
 int err (char*,...) ;
 scalar_t__ i2c_r2 (struct gspca_dev*,int,int*) ;
 scalar_t__ i2c_w2 (struct gspca_dev*,int ,int ) ;
 int info (char*) ;
 TYPE_1__* mt9m001_init ;

__attribute__((used)) static int mt9m001_init_sensor(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i;
 u16 id;

 if (i2c_r2(gspca_dev, 0x00, &id) < 0)
  return -EINVAL;


 switch (id) {
 case 0x8411:
 case 0x8421:
  info("MT9M001 color sensor detected");
  break;
 case 0x8431:
  info("MT9M001 mono sensor detected");
  break;
 default:
  err("No MT9M001 chip detected, ID = %x\n", id);
  return -ENODEV;
 }

 for (i = 0; i < ARRAY_SIZE(mt9m001_init); i++) {
  if (i2c_w2(gspca_dev, mt9m001_init[i].reg,
    mt9m001_init[i].val) < 0) {
   err("MT9M001 sensor initialization failed");
   return -ENODEV;
  }
 }

 gspca_dev->ctrl_dis = (1 << HFLIP_IDX) | (1 << VFLIP_IDX);
 sd->hstart = 1;
 sd->vstart = 1;
 return 0;
}
