
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn9c102_sensor {int dummy; } ;
struct sn9c102_device {struct sn9c102_sensor sensor; } ;



struct sn9c102_sensor* sn9c102_get_sensor(struct sn9c102_device* cam)
{
 return &cam->sensor;
}
