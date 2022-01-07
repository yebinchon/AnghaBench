
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int rxsubchans; int nicam_on; int mode; } ;
struct i2c_client {int dummy; } ;






 int V4L2_TUNER_SUB_LANG1 ;
 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int msp_debug ;
 int msp_read_dem (struct i2c_client*,int) ;
 int msp_read_dsp (struct i2c_client*,int) ;
 struct msp_state* to_state (int ) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,int,...) ;

__attribute__((used)) static int msp3400c_detect_stereo(struct i2c_client *client)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));
 int val;
 int rxsubchans = state->rxsubchans;
 int newnicam = state->nicam_on;
 int update = 0;

 switch (state->mode) {
 case 128:
  val = msp_read_dsp(client, 0x18);
  if (val > 32767)
   val -= 65536;
  v4l_dbg(2, msp_debug, client,
   "stereo detect register: %d\n", val);
  if (val > 8192) {
   rxsubchans = V4L2_TUNER_SUB_STEREO;
  } else if (val < -4096) {
   rxsubchans = V4L2_TUNER_SUB_LANG1 | V4L2_TUNER_SUB_LANG2;
  } else {
   rxsubchans = V4L2_TUNER_SUB_MONO;
  }
  newnicam = 0;
  break;
 case 130:
 case 129:
 case 131:
  val = msp_read_dem(client, 0x23);
  v4l_dbg(2, msp_debug, client, "nicam sync=%d, mode=%d\n",
   val & 1, (val & 0x1e) >> 1);

  if (val & 1) {

   switch ((val & 0x1e) >> 1) {
   case 0:
   case 8:
    rxsubchans = V4L2_TUNER_SUB_STEREO;
    break;
   case 1:
   case 9:
    rxsubchans = V4L2_TUNER_SUB_MONO;
    break;
   case 2:
   case 10:
    rxsubchans = V4L2_TUNER_SUB_LANG1 | V4L2_TUNER_SUB_LANG2;
    break;
   default:
    rxsubchans = V4L2_TUNER_SUB_MONO;
    break;
   }
   newnicam = 1;
  } else {
   newnicam = 0;
   rxsubchans = V4L2_TUNER_SUB_MONO;
  }
  break;
 }
 if (rxsubchans != state->rxsubchans) {
  update = 1;
  v4l_dbg(1, msp_debug, client,
   "watch: rxsubchans %02x => %02x\n",
   state->rxsubchans, rxsubchans);
  state->rxsubchans = rxsubchans;
 }
 if (newnicam != state->nicam_on) {
  update = 1;
  v4l_dbg(1, msp_debug, client, "watch: nicam %d => %d\n",
   state->nicam_on, newnicam);
  state->nicam_on = newnicam;
 }
 return update;
}
