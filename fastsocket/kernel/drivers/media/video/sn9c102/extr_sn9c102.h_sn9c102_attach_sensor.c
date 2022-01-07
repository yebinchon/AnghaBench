
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn9c102_sensor {int dummy; } ;
struct sn9c102_device {int sensor; } ;


 int memcpy (int *,struct sn9c102_sensor const*,int) ;

void
sn9c102_attach_sensor(struct sn9c102_device* cam,
        const struct sn9c102_sensor* sensor)
{
 memcpy(&cam->sensor, sensor, sizeof(struct sn9c102_sensor));
}
