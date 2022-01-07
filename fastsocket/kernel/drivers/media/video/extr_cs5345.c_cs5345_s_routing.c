
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int cs5345_write (struct v4l2_subdev*,int,int) ;
 int v4l2_err (struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int cs5345_s_routing(struct v4l2_subdev *sd,
       u32 input, u32 output, u32 config)
{
 if ((input & 0xf) > 6) {
  v4l2_err(sd, "Invalid input %d.\n", input);
  return -EINVAL;
 }
 cs5345_write(sd, 0x09, input & 0xf);
 cs5345_write(sd, 0x05, input & 0xf0);
 return 0;
}
