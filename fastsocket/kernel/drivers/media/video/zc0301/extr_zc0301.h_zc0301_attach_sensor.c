
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zc0301_sensor {int dummy; } ;
struct zc0301_device {int sensor; } ;


 int memcpy (int *,struct zc0301_sensor*,int) ;

void
zc0301_attach_sensor(struct zc0301_device* cam, struct zc0301_sensor* sensor)
{
 memcpy(&cam->sensor, sensor, sizeof(struct zc0301_sensor));
}
