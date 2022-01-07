
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_int_device {struct tcm825x_sensor* priv; } ;
struct tcm825x_sensor {int pix; TYPE_1__* platform_data; } ;
struct TYPE_2__ {int (* needs_reset ) (struct v4l2_int_device*,void*,int *) ;} ;


 int stub1 (struct v4l2_int_device*,void*,int *) ;

__attribute__((used)) static int ioctl_g_needs_reset(struct v4l2_int_device *s, void *buf)
{
 struct tcm825x_sensor *sensor = s->priv;

 return sensor->platform_data->needs_reset(s, buf, &sensor->pix);
}
