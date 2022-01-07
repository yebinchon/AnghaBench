
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
typedef int __s32 ;


 int REG_BRIGHT ;
 int ov7670_read (struct v4l2_subdev*,int ,unsigned char*) ;
 int ov7670_sm_to_abs (unsigned char) ;

__attribute__((used)) static int ov7670_g_brightness(struct v4l2_subdev *sd, __s32 *value)
{
 unsigned char v = 0;
 int ret = ov7670_read(sd, REG_BRIGHT, &v);

 *value = ov7670_sm_to_abs(v);
 return ret;
}
