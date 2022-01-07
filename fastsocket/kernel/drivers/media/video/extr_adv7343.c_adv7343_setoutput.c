
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct adv7343_state {int reg00; unsigned char reg02; unsigned char reg82; unsigned char reg35; } ;


 scalar_t__ ADV7343_COMPONENT_ID ;
 unsigned char ADV7343_COMPONENT_POWER_VALUE ;
 scalar_t__ ADV7343_COMPOSITE_ID ;
 unsigned char ADV7343_COMPOSITE_POWER_VALUE ;
 int ADV7343_HD_MODE_REG6 ;
 int ADV7343_MODE_REG0 ;
 int ADV7343_POWER_MODE_REG ;
 int ADV7343_SD_MODE_REG2 ;
 scalar_t__ ADV7343_SVIDEO_ID ;
 unsigned char ADV7343_SVIDEO_POWER_VALUE ;
 int EINVAL ;
 unsigned char HD_DAC_SWAP_DI ;
 unsigned char HD_RGB_INPUT_DI ;
 unsigned char SD_DAC_1_DI ;
 unsigned char SD_DAC_2_DI ;
 unsigned char YUV_OUTPUT_SELECT ;
 int adv7343_write (struct v4l2_subdev*,int ,unsigned char) ;
 int debug ;
 struct adv7343_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,scalar_t__) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;

__attribute__((used)) static int adv7343_setoutput(struct v4l2_subdev *sd, u32 output_type)
{
 struct adv7343_state *state = to_state(sd);
 unsigned char val;
 int err = 0;

 if (output_type > ADV7343_SVIDEO_ID) {
  v4l2_dbg(1, debug, sd,
   "Invalid output type or output type not supported:%d\n",
        output_type);
  return -EINVAL;
 }


 val = state->reg00 & 0x03;

 if (output_type == ADV7343_COMPOSITE_ID)
  val |= ADV7343_COMPOSITE_POWER_VALUE;
 else if (output_type == ADV7343_COMPONENT_ID)
  val |= ADV7343_COMPONENT_POWER_VALUE;
 else
  val |= ADV7343_SVIDEO_POWER_VALUE;

 err = adv7343_write(sd, ADV7343_POWER_MODE_REG, val);
 if (err < 0)
  goto setoutput_exit;

 state->reg00 = val;


 val = state->reg02 | YUV_OUTPUT_SELECT;
 err = adv7343_write(sd, ADV7343_MODE_REG0, val);
 if (err < 0)
  goto setoutput_exit;

 state->reg02 = val;


 val = state->reg82 & (SD_DAC_1_DI & SD_DAC_2_DI);
 err = adv7343_write(sd, ADV7343_SD_MODE_REG2, val);
 if (err < 0)
  goto setoutput_exit;

 state->reg82 = val;



 val = state->reg35 & (HD_RGB_INPUT_DI & HD_DAC_SWAP_DI);
 err = adv7343_write(sd, ADV7343_HD_MODE_REG6, val);
 if (err < 0)
  goto setoutput_exit;

 state->reg35 = val;

setoutput_exit:
 if (err != 0)
  v4l2_err(sd, "Error setting output, write failed\n");

 return err;
}
