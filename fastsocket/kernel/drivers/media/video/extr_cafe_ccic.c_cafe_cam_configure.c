
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int dummy; } ;
struct cafe_camera {int mbus_code; int pix_format; } ;


 scalar_t__ cafe_cam_set_flip (struct cafe_camera*) ;
 int core ;
 int init ;
 int s_mbus_fmt ;
 int sensor_call (struct cafe_camera*,int ,int ,struct v4l2_mbus_framefmt*) ;
 int v4l2_fill_mbus_format (struct v4l2_mbus_framefmt*,int *,int ) ;
 int video ;

__attribute__((used)) static int cafe_cam_configure(struct cafe_camera *cam)
{
 struct v4l2_mbus_framefmt mbus_fmt;
 int ret;

 v4l2_fill_mbus_format(&mbus_fmt, &cam->pix_format, cam->mbus_code);
 ret = sensor_call(cam, core, init, 0);
 if (ret == 0)
  ret = sensor_call(cam, video, s_mbus_fmt, &mbus_fmt);



 ret += cafe_cam_set_flip(cam);
 return ret;
}
