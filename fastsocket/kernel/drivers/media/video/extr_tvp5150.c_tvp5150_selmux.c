
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int output; int input; int enable; } ;


 int TVP5150_BLACK_SCREEN ;


 int TVP5150_MISC_CTL ;
 int TVP5150_OP_MODE_CTL ;

 int TVP5150_VD_IN_SRC_SEL_1 ;
 int debug ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;
 unsigned char tvp5150_read (struct v4l2_subdev*,int ) ;
 int tvp5150_write (struct v4l2_subdev*,int ,unsigned char) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int,int,int) ;

__attribute__((used)) static inline void tvp5150_selmux(struct v4l2_subdev *sd)
{
 int opmode = 0;
 struct tvp5150 *decoder = to_tvp5150(sd);
 int input = 0;
 unsigned char val;

 if ((decoder->output & TVP5150_BLACK_SCREEN) || !decoder->enable)
  input = 8;

 switch (decoder->input) {
 case 129:
  input |= 2;

 case 130:
  break;
 case 128:
 default:
  input |= 1;
  break;
 }

 v4l2_dbg(1, debug, sd, "Selecting video route: route input=%i, output=%i "
   "=> tvp5150 input=%i, opmode=%i\n",
   decoder->input, decoder->output,
   input, opmode);

 tvp5150_write(sd, TVP5150_OP_MODE_CTL, opmode);
 tvp5150_write(sd, TVP5150_VD_IN_SRC_SEL_1, input);




 val = tvp5150_read(sd, TVP5150_MISC_CTL);
 if (decoder->input == 128)
  val = (val & ~0x40) | 0x10;
 else
  val = (val & ~0x10) | 0x40;
 tvp5150_write(sd, TVP5150_MISC_CTL, val);
}
