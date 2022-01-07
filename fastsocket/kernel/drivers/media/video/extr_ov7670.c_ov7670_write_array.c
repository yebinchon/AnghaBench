
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct regval_list {int reg_num; int value; } ;


 int ov7670_write (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static int ov7670_write_array(struct v4l2_subdev *sd, struct regval_list *vals)
{
 while (vals->reg_num != 0xff || vals->value != 0xff) {
  int ret = ov7670_write(sd, vals->reg_num, vals->value);
  if (ret < 0)
   return ret;
  vals++;
 }
 return 0;
}
