
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct adv7170 {int input; } ;


 int EINVAL ;
 int TR0MODE ;
 int TR0RST ;
 int TR1CAPT ;
 int TR1PLAY ;
 int adv7170_write (struct v4l2_subdev*,int,int) ;
 int debug ;
 int* inputs ;
 struct adv7170* to_adv7170 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static int adv7170_s_routing(struct v4l2_subdev *sd,
        u32 input, u32 output, u32 config)
{
 struct adv7170 *encoder = to_adv7170(sd);





 v4l2_dbg(1, debug, sd, "set input from %s\n",
   input == 0 ? "decoder" : "ZR36060");

 switch (input) {
 case 0:
  adv7170_write(sd, 0x01, 0x20);
  adv7170_write(sd, 0x08, TR1CAPT);
  adv7170_write(sd, 0x02, 0x0e);
  adv7170_write(sd, 0x07, TR0MODE | TR0RST);
  adv7170_write(sd, 0x07, TR0MODE);

  break;

 case 1:
  adv7170_write(sd, 0x01, 0x00);
  adv7170_write(sd, 0x08, TR1PLAY);
  adv7170_write(sd, 0x02, 0x08);
  adv7170_write(sd, 0x07, TR0MODE | TR0RST);
  adv7170_write(sd, 0x07, TR0MODE);

  break;

 default:
  v4l2_dbg(1, debug, sd, "illegal input: %d\n", input);
  return -EINVAL;
 }
 v4l2_dbg(1, debug, sd, "switched to %s\n", inputs[input]);
 encoder->input = input;
 return 0;
}
