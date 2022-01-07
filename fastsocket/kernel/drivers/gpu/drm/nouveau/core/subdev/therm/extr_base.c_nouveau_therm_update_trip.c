
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u16 ;
struct nouveau_therm_trip_point {scalar_t__ temp; scalar_t__ hysteresis; size_t fan_duty; } ;
struct nouveau_therm_priv {struct nouveau_therm_trip_point* last_trip; TYPE_2__* fan; } ;
struct nouveau_therm {scalar_t__ (* temp_get ) (struct nouveau_therm*) ;} ;
struct TYPE_3__ {size_t nr_fan_trip; struct nouveau_therm_trip_point* trip; } ;
struct TYPE_4__ {TYPE_1__ bios; } ;


 scalar_t__ stub1 (struct nouveau_therm*) ;

__attribute__((used)) static int
nouveau_therm_update_trip(struct nouveau_therm *therm)
{
 struct nouveau_therm_priv *priv = (void *)therm;
 struct nouveau_therm_trip_point *trip = priv->fan->bios.trip,
     *cur_trip = ((void*)0),
     *last_trip = priv->last_trip;
 u8 temp = therm->temp_get(therm);
 u16 duty, i;


 cur_trip = ((void*)0);
 for (i = 0; i < priv->fan->bios.nr_fan_trip; i++) {
  if (temp >= trip[i].temp)
   cur_trip = &trip[i];
 }


 if (last_trip && temp <= (last_trip->temp) &&
     temp > (last_trip->temp - last_trip->hysteresis))
  cur_trip = last_trip;

 if (cur_trip) {
  duty = cur_trip->fan_duty;
  priv->last_trip = cur_trip;
 } else {
  duty = 0;
  priv->last_trip = ((void*)0);
 }

 return duty;
}
