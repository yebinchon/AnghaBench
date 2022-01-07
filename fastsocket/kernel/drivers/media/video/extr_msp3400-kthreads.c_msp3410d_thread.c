
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msp_state {scalar_t__ mode; int scan_in_progress; int v4l2_std; int watch_stereo; int nicam_on; int std; int i2s_mode; scalar_t__ has_i2s_conf; scalar_t__ has_nicam; int rxsubchans; scalar_t__ radio; int second; int main; scalar_t__ restart; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {char* name; int retval; int second; int main; } ;


 int MSP_CARRIER (double) ;
 scalar_t__ MSP_MODE_AM_NICAM ;
 scalar_t__ MSP_MODE_BTSC ;
 scalar_t__ MSP_MODE_EXTERN ;
 scalar_t__ MSP_MODE_FM_NICAM1 ;
 scalar_t__ MSP_MODE_FM_NICAM2 ;
 scalar_t__ MSP_MODE_FM_RADIO ;
 scalar_t__ MSP_MODE_FM_TERRA ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_SECAM ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kthread_should_stop () ;
 int msp3400c_set_audmode (struct i2c_client*) ;
 int msp3400c_set_carrier (struct i2c_client*,int ,int ) ;
 int msp3400c_set_mode (struct i2c_client*,scalar_t__) ;
 scalar_t__ msp_amsound ;
 scalar_t__ msp_debug ;
 int msp_read_dem (struct i2c_client*,int) ;
 scalar_t__ msp_sleep (struct msp_state*,int) ;
 int msp_standard_std_name (int) ;
 TYPE_1__* msp_stdlist ;
 int msp_update_volume (struct msp_state*) ;
 int msp_write_dem (struct i2c_client*,int,int) ;
 int msp_write_dsp (struct i2c_client*,int,int) ;
 int set_freezable () ;
 struct msp_state* to_state (int ) ;
 int v4l_dbg (int,scalar_t__,struct i2c_client*,char*,...) ;
 int watch_stereo (struct i2c_client*) ;

int msp3410d_thread(void *data)
{
 struct i2c_client *client = data;
 struct msp_state *state = to_state(i2c_get_clientdata(client));
 int val, i, std, count;

 v4l_dbg(1, msp_debug, client, "msp3410 daemon started\n");
 set_freezable();
 for (;;) {
  v4l_dbg(2, msp_debug, client, "msp3410 thread: sleep\n");
  msp_sleep(state, -1);
  v4l_dbg(2, msp_debug, client, "msp3410 thread: wakeup\n");

restart:
  v4l_dbg(2, msp_debug, client, "thread: restart scan\n");
  state->restart = 0;
  if (kthread_should_stop())
   break;

  if (state->mode == MSP_MODE_EXTERN) {

   v4l_dbg(1, msp_debug, client,
    "thread: no carrier scan\n");
   state->scan_in_progress = 0;
   msp_update_volume(state);
   continue;
  }


  state->scan_in_progress = 1;
  msp_update_volume(state);




  if (state->radio)
   std = 0x40;
  else
   std = (state->v4l2_std & V4L2_STD_NTSC) ? 0x20 : 1;
  state->watch_stereo = 0;
  state->nicam_on = 0;


  if (msp_sleep(state, 200))
   goto restart;

  if (msp_debug)
   v4l_dbg(2, msp_debug, client,
    "setting standard: %s (0x%04x)\n",
    msp_standard_std_name(std), std);

  if (std != 1) {

   val = std;
  } else {

   msp_write_dem(client, 0x20, std);
   for (;;) {
    if (msp_sleep(state, 100))
     goto restart;


    val = msp_read_dem(client, 0x7e);
    if (val < 0x07ff)
     break;
    v4l_dbg(2, msp_debug, client,
     "detection still in progress\n");
   }
  }
  for (i = 0; msp_stdlist[i].name != ((void*)0); i++)
   if (msp_stdlist[i].retval == val)
    break;
  v4l_dbg(1, msp_debug, client, "current standard: %s (0x%04x)\n",
   msp_standard_std_name(val), val);
  state->main = msp_stdlist[i].main;
  state->second = msp_stdlist[i].second;
  state->std = val;
  state->rxsubchans = V4L2_TUNER_SUB_MONO;

  if (msp_amsound && !state->radio &&
      (state->v4l2_std & V4L2_STD_SECAM) && (val != 0x0009)) {

   v4l_dbg(1, msp_debug, client, "autodetection failed,"
    " switching to backup standard: %s (0x%04x)\n",
    msp_stdlist[8].name ?
     msp_stdlist[8].name : "unknown", val);
   state->std = val = 0x0009;
   msp_write_dem(client, 0x20, val);
  }


  switch (val) {
  case 0x0008:
  case 0x000a:
  case 0x000b:
   if (val == 0x000a)
    state->mode = MSP_MODE_FM_NICAM2;
   else
    state->mode = MSP_MODE_FM_NICAM1;

   state->nicam_on = 1;
   state->watch_stereo = 1;
   break;
  case 0x0009:
   state->mode = MSP_MODE_AM_NICAM;
   state->nicam_on = 1;
   state->watch_stereo = 1;
   break;
  case 0x0020:

   state->mode = MSP_MODE_BTSC;
   break;
  case 0x0040:
   state->mode = MSP_MODE_FM_RADIO;
   state->rxsubchans = V4L2_TUNER_SUB_STEREO;


   msp3400c_set_mode(client, MSP_MODE_FM_RADIO);
   msp3400c_set_carrier(client, MSP_CARRIER(10.7),
         MSP_CARRIER(10.7));
   break;
  case 0x0002:
  case 0x0003:
  case 0x0004:
  case 0x0005:
   state->mode = MSP_MODE_FM_TERRA;
   state->watch_stereo = 1;
   break;
  }


  msp_write_dsp(client, 0x0d, 0x1900);
  msp_write_dsp(client, 0x0e, 0x3000);
  if (state->has_nicam)
   msp_write_dsp(client, 0x10, 0x5a00);

  if (state->has_i2s_conf)
   msp_write_dem(client, 0x40, state->i2s_mode);


  msp3400c_set_audmode(client);
  state->scan_in_progress = 0;
  msp_update_volume(state);



  count = 3;
  while (state->watch_stereo) {
   if (msp_sleep(state, count ? 1000 : 5000))
    goto restart;
   if (count)
    count--;
   watch_stereo(client);
  }
 }
 v4l_dbg(1, msp_debug, client, "thread: exit\n");
 return 0;
}
