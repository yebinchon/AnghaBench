
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et61x251_sensor {int dummy; } ;
struct et61x251_device {int sensor; } ;


 int memcpy (int *,struct et61x251_sensor const*,int) ;

void
et61x251_attach_sensor(struct et61x251_device* cam,
         const struct et61x251_sensor* sensor)
{
 memcpy(&cam->sensor, sensor, sizeof(struct et61x251_sensor));
}
