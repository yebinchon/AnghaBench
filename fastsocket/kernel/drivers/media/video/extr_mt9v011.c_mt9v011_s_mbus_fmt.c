
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;
struct mt9v011 {int height; int width; } ;


 int EINVAL ;
 int mt9v011_try_mbus_fmt (struct v4l2_subdev*,struct v4l2_mbus_framefmt*) ;
 int set_res (struct v4l2_subdev*) ;
 struct mt9v011* to_mt9v011 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v011_s_mbus_fmt(struct v4l2_subdev *sd, struct v4l2_mbus_framefmt *fmt)
{
 struct mt9v011 *core = to_mt9v011(sd);
 int rc;

 rc = mt9v011_try_mbus_fmt(sd, fmt);
 if (rc < 0)
  return -EINVAL;

 core->width = fmt->width;
 core->height = fmt->height;

 set_res(sd);

 return 0;
}
