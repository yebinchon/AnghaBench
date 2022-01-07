
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 unsigned char MVFP_MIRROR ;
 int REG_MVFP ;
 int msleep (int) ;
 int ov7670_read (struct v4l2_subdev*,int ,unsigned char*) ;
 scalar_t__ ov7670_write (struct v4l2_subdev*,int ,unsigned char) ;

__attribute__((used)) static int ov7670_s_hflip(struct v4l2_subdev *sd, int value)
{
 unsigned char v = 0;
 int ret;

 ret = ov7670_read(sd, REG_MVFP, &v);
 if (value)
  v |= MVFP_MIRROR;
 else
  v &= ~MVFP_MIRROR;
 msleep(10);
 ret += ov7670_write(sd, REG_MVFP, v);
 return ret;
}
