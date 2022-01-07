
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_10__ {int nctrls; TYPE_5__* ctrls; } ;
struct TYPE_8__ {int nmodes; TYPE_5__* cam_mode; } ;
struct TYPE_9__ {TYPE_1__ cam; } ;
struct sd {int * sensor_priv; TYPE_3__ desc; TYPE_2__ gspca_dev; } ;
typedef int s32 ;
struct TYPE_11__ {int default_value; } ;
struct TYPE_12__ {TYPE_4__ qctrl; } ;


 int ARRAY_SIZE (TYPE_5__*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PB_IDENT ;
 int info (char*) ;
 int * kmalloc (int,int ) ;
 TYPE_5__* pb0100_ctrl ;
 TYPE_5__* pb0100_mode ;
 int stv06xx_read_sensor (struct sd*,int ,int*) ;

__attribute__((used)) static int pb0100_probe(struct sd *sd)
{
 u16 sensor;
 int i, err;
 s32 *sensor_settings;

 err = stv06xx_read_sensor(sd, PB_IDENT, &sensor);

 if (err < 0)
  return -ENODEV;

 if ((sensor >> 8) == 0x64) {
  sensor_settings = kmalloc(
    ARRAY_SIZE(pb0100_ctrl) * sizeof(s32),
    GFP_KERNEL);
  if (!sensor_settings)
   return -ENOMEM;

  info("Photobit pb0100 sensor detected");

  sd->gspca_dev.cam.cam_mode = pb0100_mode;
  sd->gspca_dev.cam.nmodes = ARRAY_SIZE(pb0100_mode);
  sd->desc.ctrls = pb0100_ctrl;
  sd->desc.nctrls = ARRAY_SIZE(pb0100_ctrl);
  for (i = 0; i < sd->desc.nctrls; i++)
   sensor_settings[i] = pb0100_ctrl[i].qctrl.default_value;
  sd->sensor_priv = sensor_settings;

  return 0;
 }

 return -ENODEV;
}
