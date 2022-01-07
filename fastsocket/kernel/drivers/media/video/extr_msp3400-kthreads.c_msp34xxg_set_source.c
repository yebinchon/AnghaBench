
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct msp_state {int audmode; scalar_t__ has_dolby_pro_logic; } ;
struct i2c_client {int dummy; } ;


 int MSP_DSP_IN_MAIN_AVC ;
 int MSP_DSP_IN_TUNER ;





 int i2c_get_clientdata (struct i2c_client*) ;
 int msp_debug ;
 int msp_write_dsp (struct i2c_client*,int ,int) ;
 struct msp_state* to_state (int ) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,int,int,int ) ;

__attribute__((used)) static void msp34xxg_set_source(struct i2c_client *client, u16 reg, int in)
 {
 struct msp_state *state = to_state(i2c_get_clientdata(client));
 int source, matrix;

 switch (state->audmode) {
 case 129:
  source = 0;
  matrix = 0x30;
  break;
 case 130:
  source = 4;
  matrix = 0x10;
  break;
 case 131:
  source = 1;
  matrix = 0x20;
  break;
 case 132:
  source = 3;
  matrix = 0x00;
  break;
 case 128:
 default:
  source = 3;
  matrix = 0x20;
  break;
 }

 if (in == MSP_DSP_IN_TUNER)
  source = (source << 8) | 0x20;


 else if (in >= MSP_DSP_IN_MAIN_AVC && state->has_dolby_pro_logic)
  source = ((in + 1) << 8) | matrix;
 else
  source = (in << 8) | matrix;

 v4l_dbg(1, msp_debug, client,
  "set source to %d (0x%x) for output %02x\n", in, source, reg);
 msp_write_dsp(client, reg, source);
}
