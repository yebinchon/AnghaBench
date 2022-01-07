
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct st6422_settings {TYPE_1__* ctrls; } ;
struct sd {struct st6422_settings* sensor_priv; } ;
struct TYPE_2__ {int val; } ;


 size_t EXPOSURE ;
 int stv06xx_write_bridge (struct sd*,int,int) ;

__attribute__((used)) static int setexposure(struct sd *sd)
{
 struct st6422_settings *sensor_settings = sd->sensor_priv;
 u16 expo;
 int err;

 expo = sensor_settings->ctrls[EXPOSURE].val;
 err = stv06xx_write_bridge(sd, 0x143d, expo & 0xff);
 if (err < 0)
  return err;

 return stv06xx_write_bridge(sd, 0x143e, expo >> 8);
}
