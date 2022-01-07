
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_ctrl {int val; int id; } ;
struct msp_state {int scan_in_progress; int has_headphones; int has_scart2_out_volume; TYPE_2__* volume; TYPE_1__* muted; int sd; } ;
struct i2c_client {int dummy; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;


 int EINVAL ;





 struct msp_state* ctrl_to_state (struct v4l2_ctrl*) ;
 int msp_debug ;
 int msp_write_dsp (struct i2c_client*,int,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,char*,char*,int ) ;

__attribute__((used)) static int msp_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct msp_state *state = ctrl_to_state(ctrl);
 struct i2c_client *client = v4l2_get_subdevdata(&state->sd);
 int val = ctrl->val;

 switch (ctrl->id) {
 case 128: {

  int reallymuted = state->muted->val | state->scan_in_progress;

  if (!reallymuted)
   val = (val * 0x7f / 65535) << 8;

  v4l_dbg(1, msp_debug, client, "mute=%s scanning=%s volume=%d\n",
    state->muted->val ? "on" : "off",
    state->scan_in_progress ? "yes" : "no",
    state->volume->val);

  msp_write_dsp(client, 0x0000, val);
  msp_write_dsp(client, 0x0007, reallymuted ? 0x1 : (val | 0x1));
  if (state->has_scart2_out_volume)
   msp_write_dsp(client, 0x0040, reallymuted ? 0x1 : (val | 0x1));
  if (state->has_headphones)
   msp_write_dsp(client, 0x0006, val);
  break;
 }

 case 131:
  val = ((val - 32768) * 0x60 / 65535) << 8;
  msp_write_dsp(client, 0x0002, val);
  if (state->has_headphones)
   msp_write_dsp(client, 0x0031, val);
  break;

 case 129:
  val = ((val - 32768) * 0x60 / 65535) << 8;
  msp_write_dsp(client, 0x0003, val);
  if (state->has_headphones)
   msp_write_dsp(client, 0x0032, val);
  break;

 case 130:
  val = val ? ((5 * 4) << 8) : 0;
  msp_write_dsp(client, 0x0004, val);
  if (state->has_headphones)
   msp_write_dsp(client, 0x0033, val);
  break;

 case 132:
  val = (u8)((val / 256) - 128);
  msp_write_dsp(client, 0x0001, val << 8);
  if (state->has_headphones)
   msp_write_dsp(client, 0x0030, val << 8);
  break;

 default:
  return -EINVAL;
 }
 return 0;
}
