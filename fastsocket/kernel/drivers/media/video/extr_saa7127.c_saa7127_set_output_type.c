
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa7127_state {int reg_2d; int reg_3a; int reg_3a_cb; int output_type; int ident; } ;


 int EINVAL ;






 int V4L2_IDENT_SAA7129 ;
 int debug ;
 int * output_strs ;
 int saa7127_write (struct v4l2_subdev*,int,int) ;
 struct saa7127_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ) ;

__attribute__((used)) static int saa7127_set_output_type(struct v4l2_subdev *sd, int output)
{
 struct saa7127_state *state = to_state(sd);

 switch (output) {
 case 131:
  state->reg_2d = 0x0f;
  state->reg_3a = 0x13;
  break;

 case 132:
  if (state->ident == V4L2_IDENT_SAA7129)
   state->reg_2d = 0x20;
  else
   state->reg_2d = 0x08;
  state->reg_3a = 0x13;
  break;

 case 130:
  if (state->ident == V4L2_IDENT_SAA7129)
   state->reg_2d = 0x18;
  else
   state->reg_2d = 0xff;
  state->reg_3a = 0x13;
  break;

 case 128:
  state->reg_2d = 0x4f;
  state->reg_3a = 0x0b;
  break;

 case 129:
  state->reg_2d = 0x0f;
  state->reg_3a = 0x0b;
  break;

 case 133:
  if (state->ident == V4L2_IDENT_SAA7129)
   state->reg_2d = 0x38;
  else
   state->reg_2d = 0xbf;
  state->reg_3a = 0x13;
  break;

 default:
  return -EINVAL;
 }
 v4l2_dbg(1, debug, sd,
  "Selecting %s output type\n", output_strs[output]);


 saa7127_write(sd, 0x2d, state->reg_2d);
 saa7127_write(sd, 0x3a, state->reg_3a | state->reg_3a_cb);
 state->output_type = output;
 return 0;
}
