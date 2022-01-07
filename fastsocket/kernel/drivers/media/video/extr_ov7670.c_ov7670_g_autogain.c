
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
typedef int __s32 ;


 unsigned char COM8_AGC ;
 int REG_COM8 ;
 int ov7670_read (struct v4l2_subdev*,int ,unsigned char*) ;

__attribute__((used)) static int ov7670_g_autogain(struct v4l2_subdev *sd, __s32 *value)
{
 int ret;
 unsigned char com8;

 ret = ov7670_read(sd, REG_COM8, &com8);
 *value = (com8 & COM8_AGC) != 0;
 return ret;
}
