
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
 int EXPOSURE_IDX ;
 int HFLIP_IDX ;
 int VFLIP_IDX ;
 int err (char*) ;
 scalar_t__ i2c_w1 (struct gspca_dev*,int ,int ) ;
 TYPE_1__* soi968_init ;

__attribute__((used)) static int soi968_init_sensor(struct gspca_dev *gspca_dev)
{
 int i;
 struct sd *sd = (struct sd *) gspca_dev;

 for (i = 0; i < ARRAY_SIZE(soi968_init); i++) {
  if (i2c_w1(gspca_dev, soi968_init[i].reg,
    soi968_init[i].val) < 0) {
   err("SOI968 sensor initialization failed");
   return -ENODEV;
  }
 }

 gspca_dev->ctrl_dis = (1 << HFLIP_IDX) | (1 << VFLIP_IDX)
    | (1 << EXPOSURE_IDX);
 sd->hstart = 60;
 sd->vstart = 11;
 return 0;
}
