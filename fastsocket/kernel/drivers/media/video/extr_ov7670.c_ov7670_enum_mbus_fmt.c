
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
typedef enum v4l2_mbus_pixelcode { ____Placeholder_v4l2_mbus_pixelcode } v4l2_mbus_pixelcode ;
struct TYPE_2__ {int mbus_code; } ;


 int EINVAL ;
 unsigned int N_OV7670_FMTS ;
 TYPE_1__* ov7670_formats ;

__attribute__((used)) static int ov7670_enum_mbus_fmt(struct v4l2_subdev *sd, unsigned index,
     enum v4l2_mbus_pixelcode *code)
{
 if (index >= N_OV7670_FMTS)
  return -EINVAL;

 *code = ov7670_formats[index].mbus_code;
 return 0;
}
