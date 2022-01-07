
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {int dummy; } ;
struct v4l2_int_device {struct tcm825x_sensor* priv; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct tcm825x_sensor {struct v4l2_pix_format pix; } ;


 int ioctl_try_fmt_cap (struct v4l2_int_device*,struct v4l2_format*) ;
 int tcm825x_configure (struct v4l2_int_device*) ;

__attribute__((used)) static int ioctl_s_fmt_cap(struct v4l2_int_device *s,
    struct v4l2_format *f)
{
 struct tcm825x_sensor *sensor = s->priv;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 int rval;

 rval = ioctl_try_fmt_cap(s, f);
 if (rval)
  return rval;

 rval = tcm825x_configure(s);

 sensor->pix = *pix;

 return rval;
}
