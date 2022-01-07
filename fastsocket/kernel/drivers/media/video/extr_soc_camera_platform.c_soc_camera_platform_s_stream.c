
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct soc_camera_platform_info {int (* set_capture ) (struct soc_camera_platform_info*,int) ;} ;


 int stub1 (struct soc_camera_platform_info*,int) ;
 struct soc_camera_platform_info* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int soc_camera_platform_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct soc_camera_platform_info *p = v4l2_get_subdevdata(sd);
 return p->set_capture(p, enable);
}
