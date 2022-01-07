
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
typedef enum v4l2_exposure_auto_type { ____Placeholder_v4l2_exposure_auto_type } v4l2_exposure_auto_type ;
typedef int __s32 ;


 unsigned char COM8_AEC ;
 int REG_COM8 ;
 int V4L2_EXPOSURE_AUTO ;
 int V4L2_EXPOSURE_MANUAL ;
 int ov7670_read (struct v4l2_subdev*,int ,unsigned char*) ;

__attribute__((used)) static int ov7670_g_autoexp(struct v4l2_subdev *sd, __s32 *value)
{
 int ret;
 unsigned char com8;
 enum v4l2_exposure_auto_type *atype = (enum v4l2_exposure_auto_type *) value;

 ret = ov7670_read(sd, REG_COM8, &com8);
 if (com8 & COM8_AEC)
  *atype = V4L2_EXPOSURE_AUTO;
 else
  *atype = V4L2_EXPOSURE_MANUAL;
 return ret;
}
