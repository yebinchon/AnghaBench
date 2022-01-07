
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;
struct TYPE_2__ {int field; int colorspace; int code; int height; int width; } ;
struct soc_camera_platform_info {TYPE_1__ format; } ;


 struct soc_camera_platform_info* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int soc_camera_platform_fill_fmt(struct v4l2_subdev *sd,
     struct v4l2_mbus_framefmt *mf)
{
 struct soc_camera_platform_info *p = v4l2_get_subdevdata(sd);

 mf->width = p->format.width;
 mf->height = p->format.height;
 mf->code = p->format.code;
 mf->colorspace = p->format.colorspace;
 mf->field = p->format.field;

 return 0;
}
