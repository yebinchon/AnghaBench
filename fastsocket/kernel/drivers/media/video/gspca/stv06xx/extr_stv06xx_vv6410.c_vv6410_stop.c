
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;


 int D_STREAM ;
 int LED_OFF ;
 int PDEBUG (int ,char*) ;
 int STV_LED_CTRL ;
 int VV6410_LOW_POWER_MODE ;
 int VV6410_SETUP0 ;
 int stv06xx_write_bridge (struct sd*,int ,int ) ;
 int stv06xx_write_sensor (struct sd*,int ,int ) ;

__attribute__((used)) static int vv6410_stop(struct sd *sd)
{
 int err;


 err = stv06xx_write_bridge(sd, STV_LED_CTRL, LED_OFF);
 if (err < 0)
  return err;

 err = stv06xx_write_sensor(sd, VV6410_SETUP0, VV6410_LOW_POWER_MODE);
 if (err < 0)
  return err;

 PDEBUG(D_STREAM, "Halting stream");

 return (err < 0) ? err : 0;
}
