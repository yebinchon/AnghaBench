
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int code; } ;
struct soc_camera_platform_info {TYPE_1__ format; } ;
typedef enum v4l2_mbus_pixelcode { ____Placeholder_v4l2_mbus_pixelcode } v4l2_mbus_pixelcode ;


 int EINVAL ;
 struct soc_camera_platform_info* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int soc_camera_platform_enum_fmt(struct v4l2_subdev *sd, unsigned int index,
     enum v4l2_mbus_pixelcode *code)
{
 struct soc_camera_platform_info *p = v4l2_get_subdevdata(sd);

 if (index)
  return -EINVAL;

 *code = p->format.code;
 return 0;
}
