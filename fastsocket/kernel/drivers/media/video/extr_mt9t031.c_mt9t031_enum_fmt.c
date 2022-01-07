
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
typedef enum v4l2_mbus_pixelcode { ____Placeholder_v4l2_mbus_pixelcode } v4l2_mbus_pixelcode ;


 int EINVAL ;
 int V4L2_MBUS_FMT_SBGGR10_1X10 ;

__attribute__((used)) static int mt9t031_enum_fmt(struct v4l2_subdev *sd, unsigned int index,
       enum v4l2_mbus_pixelcode *code)
{
 if (index)
  return -EINVAL;

 *code = V4L2_MBUS_FMT_SBGGR10_1X10;
 return 0;
}
