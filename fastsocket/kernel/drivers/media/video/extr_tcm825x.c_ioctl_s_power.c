
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_int_device {struct tcm825x_sensor* priv; } ;
struct tcm825x_sensor {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int (* power_set ) (int) ;} ;


 int stub1 (int) ;

__attribute__((used)) static int ioctl_s_power(struct v4l2_int_device *s, int on)
{
 struct tcm825x_sensor *sensor = s->priv;

 return sensor->platform_data->power_set(on);
}
