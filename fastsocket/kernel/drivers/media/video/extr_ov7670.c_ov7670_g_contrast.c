
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
typedef unsigned char __s32 ;


 int REG_CONTRAS ;
 int ov7670_read (struct v4l2_subdev*,int ,unsigned char*) ;

__attribute__((used)) static int ov7670_g_contrast(struct v4l2_subdev *sd, __s32 *value)
{
 unsigned char v = 0;
 int ret = ov7670_read(sd, REG_CONTRAS, &v);

 *value = v;
 return ret;
}
