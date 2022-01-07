
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st6422_settings {TYPE_1__* ctrls; } ;
struct sd {struct st6422_settings* sensor_priv; } ;
struct TYPE_2__ {int val; } ;


 size_t CONTRAST ;
 int stv06xx_write_bridge (struct sd*,int,int) ;

__attribute__((used)) static int setcontrast(struct sd *sd)
{
 struct st6422_settings *sensor_settings = sd->sensor_priv;


 return stv06xx_write_bridge(sd, 0x143a,
   sensor_settings->ctrls[CONTRAST].val | 0xf0);
}
