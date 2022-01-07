
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
typedef enum v4l2_mbus_pixelcode { ____Placeholder_v4l2_mbus_pixelcode } v4l2_mbus_pixelcode ;
struct TYPE_3__ {int code; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* ov772x_cfmts ;

__attribute__((used)) static int ov772x_enum_fmt(struct v4l2_subdev *sd, unsigned int index,
      enum v4l2_mbus_pixelcode *code)
{
 if (index >= ARRAY_SIZE(ov772x_cfmts))
  return -EINVAL;

 *code = ov772x_cfmts[index].code;
 return 0;
}
