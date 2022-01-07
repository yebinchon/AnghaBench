
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int debug ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,char*) ;
 int vpx3220_write (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static int vpx3220_s_stream(struct v4l2_subdev *sd, int enable)
{
 v4l2_dbg(1, debug, sd, "s_stream %s\n", enable ? "on" : "off");

 vpx3220_write(sd, 0xf2, (enable ? 0x1b : 0x00));
 return 0;
}
