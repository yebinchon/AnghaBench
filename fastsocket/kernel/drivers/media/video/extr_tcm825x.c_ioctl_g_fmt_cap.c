
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_int_device {struct tcm825x_sensor* priv; } ;
struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct tcm825x_sensor {int pix; } ;



__attribute__((used)) static int ioctl_g_fmt_cap(struct v4l2_int_device *s,
    struct v4l2_format *f)
{
 struct tcm825x_sensor *sensor = s->priv;

 f->fmt.pix = sensor->pix;

 return 0;
}
