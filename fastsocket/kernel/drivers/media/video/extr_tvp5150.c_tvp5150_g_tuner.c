
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int signal; } ;
struct v4l2_subdev {int dummy; } ;


 int tvp5150_read (struct v4l2_subdev*,int) ;

__attribute__((used)) static int tvp5150_g_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 int status = tvp5150_read(sd, 0x88);

 vt->signal = ((status & 0x04) && (status & 0x02)) ? 0xffff : 0x0;
 return 0;
}
