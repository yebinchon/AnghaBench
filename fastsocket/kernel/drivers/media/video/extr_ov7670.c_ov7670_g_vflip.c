
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
typedef int __s32 ;


 unsigned char MVFP_FLIP ;
 int REG_MVFP ;
 int ov7670_read (struct v4l2_subdev*,int ,unsigned char*) ;

__attribute__((used)) static int ov7670_g_vflip(struct v4l2_subdev *sd, __s32 *value)
{
 int ret;
 unsigned char v = 0;

 ret = ov7670_read(sd, REG_MVFP, &v);
 *value = (v & MVFP_FLIP) == MVFP_FLIP;
 return ret;
}
