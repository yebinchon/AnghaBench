
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int norm; } ;


 int TVP5150_VIDEO_STD ;
 int V4L2_STD_ALL ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_NTSC_443 ;
 int V4L2_STD_PAL ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_N ;
 int V4L2_STD_PAL_Nc ;
 int V4L2_STD_SECAM ;
 int debug ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;
 int tvp5150_write (struct v4l2_subdev*,int ,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int tvp5150_set_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct tvp5150 *decoder = to_tvp5150(sd);
 int fmt = 0;

 decoder->norm = std;



 if (std == V4L2_STD_ALL) {
  fmt = 0;
 } else if (std & V4L2_STD_NTSC_443) {
  fmt = 0xa;
 } else if (std & V4L2_STD_PAL_M) {
  fmt = 0x6;
 } else if (std & (V4L2_STD_PAL_N | V4L2_STD_PAL_Nc)) {
  fmt = 0x8;
 } else {

  if (std & V4L2_STD_NTSC)
   fmt = 0x2;
  else if (std & V4L2_STD_PAL)
   fmt = 0x4;
  else if (std & V4L2_STD_SECAM)
   fmt = 0xc;
 }

 v4l2_dbg(1, debug, sd, "Set video std register to %d.\n", fmt);
 tvp5150_write(sd, TVP5150_VIDEO_STD, fmt);
 return 0;
}
