
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov7670_info {int sat; } ;
typedef int __s32 ;


 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_g_sat(struct v4l2_subdev *sd, __s32 *value)
{
 struct ov7670_info *info = to_state(sd);

 *value = info->sat;
 return 0;
}
