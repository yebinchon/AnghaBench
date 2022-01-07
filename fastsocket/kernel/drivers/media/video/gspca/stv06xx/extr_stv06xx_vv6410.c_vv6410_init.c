
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sd {int gspca_dev; int * sensor_priv; } ;
typedef int s32 ;
struct TYPE_4__ {int* data; int len; scalar_t__ start; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 size_t EXPOSURE_IDX ;
 size_t GAIN_IDX ;
 int stv06xx_write_bridge (struct sd*,scalar_t__,int) ;
 int stv06xx_write_sensor_bytes (struct sd*,int *,int) ;
 TYPE_1__* stv_bridge_init ;
 TYPE_1__* vv6410_sensor_init ;
 int vv6410_set_analog_gain (int *,int ) ;
 int vv6410_set_exposure (int *,int ) ;

__attribute__((used)) static int vv6410_init(struct sd *sd)
{
 int err = 0, i;
 s32 *sensor_settings = sd->sensor_priv;

 for (i = 0; i < ARRAY_SIZE(stv_bridge_init); i++) {

  if (stv_bridge_init[i].data == ((void*)0)) {
   err = stv06xx_write_bridge(sd,
    stv_bridge_init[i].start,
    stv_bridge_init[i].len);
  } else {
   int j;
   for (j = 0; j < stv_bridge_init[i].len; j++)
    err = stv06xx_write_bridge(sd,
     stv_bridge_init[i].start + j,
     stv_bridge_init[i].data[j]);
  }
 }

 if (err < 0)
  return err;

 err = stv06xx_write_sensor_bytes(sd, (u8 *) vv6410_sensor_init,
      ARRAY_SIZE(vv6410_sensor_init));
 if (err < 0)
  return err;

 err = vv6410_set_exposure(&sd->gspca_dev,
       sensor_settings[EXPOSURE_IDX]);
 if (err < 0)
  return err;

 err = vv6410_set_analog_gain(&sd->gspca_dev,
          sensor_settings[GAIN_IDX]);

 return (err < 0) ? err : 0;
}
