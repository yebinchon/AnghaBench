
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_vbi_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int saa711x_set_lcr (struct v4l2_subdev*,int *) ;

__attribute__((used)) static int saa711x_s_raw_fmt(struct v4l2_subdev *sd, struct v4l2_vbi_format *fmt)
{
 saa711x_set_lcr(sd, ((void*)0));
 return 0;
}
