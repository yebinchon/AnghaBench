
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;


 int ov7670_try_fmt_internal (struct v4l2_subdev*,struct v4l2_mbus_framefmt*,int *,int *) ;

__attribute__((used)) static int ov7670_try_mbus_fmt(struct v4l2_subdev *sd,
       struct v4l2_mbus_framefmt *fmt)
{
 return ov7670_try_fmt_internal(sd, fmt, ((void*)0), ((void*)0));
}
