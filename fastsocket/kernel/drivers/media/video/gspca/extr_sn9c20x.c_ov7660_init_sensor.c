
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sd {int hstart; int vstart; } ;
struct gspca_dev {int ctrl_dis; } ;
struct TYPE_3__ {int val; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENODEV ;
 int HFLIP_IDX ;
 int VFLIP_IDX ;
 int err (char*) ;
 scalar_t__ i2c_w1 (struct gspca_dev*,int ,int ) ;
 TYPE_1__* ov7660_init ;

__attribute__((used)) static int ov7660_init_sensor(struct gspca_dev *gspca_dev)
{
 int i;
 struct sd *sd = (struct sd *) gspca_dev;

 for (i = 0; i < ARRAY_SIZE(ov7660_init); i++) {
  if (i2c_w1(gspca_dev, ov7660_init[i].reg,
    ov7660_init[i].val) < 0) {
   err("OV7660 sensor initialization failed");
   return -ENODEV;
  }
 }

 gspca_dev->ctrl_dis = (1 << HFLIP_IDX) | (1 << VFLIP_IDX);
 sd->hstart = 1;
 sd->vstart = 1;
 return 0;
}
