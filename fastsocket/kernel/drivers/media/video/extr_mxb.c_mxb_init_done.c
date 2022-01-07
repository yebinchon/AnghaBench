
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef struct tuner_setup* v4l2_std_id ;
struct tuner_setup {int frequency; int type; scalar_t__ tuner; int addr; int mode_mask; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {size_t cur_input; int cur_mute; int i2c_adapter; int cur_mode; struct tuner_setup cur_freq; } ;
struct i2c_msg {int addr; int len; int * buf; scalar_t__ flags; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int hps_sync; int hps_source; } ;
struct TYPE_4__ {int length; int * data; } ;


 int ADDR_UNSET ;
 int DD1_INIT ;
 int DD1_STREAM_B ;
 int DEB_D (char*) ;
 int INFO (char*) ;
 int MASK_09 ;
 int MASK_10 ;
 int MASK_25 ;
 int MASK_26 ;
 int MC2 ;
 int SAA7111_FMT_CCIR ;
 int SAA7111_VBI_BYPASS ;
 int SAA7115_COMPOSITE0 ;
 int SAA7146_USE_I2C_IRQ ;
 int TUNER_PHILIPS_PAL ;
 int T_ANALOG_TV ;
 struct tuner_setup* V4L2_STD_PAL_BG ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_MODE_STEREO ;
 int core ;
 TYPE_3__ extension ;
 int freq ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 TYPE_2__* input_port_selection ;
 TYPE_1__* mxb_saa7740_init ;
 int s_frequency ;
 int s_routing ;
 int s_std ;
 int s_type_addr ;
 int saa7111a_call (struct mxb*,int ,int ,struct tuner_setup*,...) ;
 int saa7146_set_hps_source_and_sync (struct saa7146_dev*,int ,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int tea6415c_call (struct mxb*,int ,int ,int,int,int ) ;
 int tea6420_route_cd (struct mxb*,int) ;
 int tea6420_route_line (struct mxb*,int) ;
 int tuner ;
 int tuner_call (struct mxb*,int ,int ,struct tuner_setup*) ;
 int video ;

__attribute__((used)) static int mxb_init_done(struct saa7146_dev* dev)
{
 struct mxb* mxb = (struct mxb*)dev->ext_priv;
 struct i2c_msg msg;
 struct tuner_setup tun_setup;
 v4l2_std_id std = V4L2_STD_PAL_BG;

 int i = 0, err = 0;


 saa7111a_call(mxb, core, s_std, std);


 i = 0;
 saa7111a_call(mxb, video, s_routing, SAA7115_COMPOSITE0,
  SAA7111_FMT_CCIR | SAA7111_VBI_BYPASS, 0);


 tun_setup.mode_mask = T_ANALOG_TV;
 tun_setup.addr = ADDR_UNSET;
 tun_setup.type = TUNER_PHILIPS_PAL;
 tuner_call(mxb, tuner, s_type_addr, &tun_setup);

 mxb->cur_freq.tuner = 0;
 mxb->cur_freq.type = V4L2_TUNER_ANALOG_TV;
 mxb->cur_freq.frequency = freq;
 tuner_call(mxb, tuner, s_frequency, &mxb->cur_freq);


 tuner_call(mxb, core, s_std, std);


 tea6420_route_line(mxb, 6);
 tea6420_route_cd(mxb, 6);


 tea6415c_call(mxb, video, s_routing, 3, 17, 0);


 tea6415c_call(mxb, video, s_routing, 3, 13, 0);


 mxb->cur_input = 0;
 mxb->cur_mute = 1;

 mxb->cur_mode = V4L2_TUNER_MODE_STEREO;





 msg.addr = 0x1b;
 msg.flags = 0;
 msg.len = mxb_saa7740_init[0].length;
 msg.buf = &mxb_saa7740_init[0].data[0];

 err = i2c_transfer(&mxb->i2c_adapter, &msg, 1);
 if (err == 1) {





  extension.flags &= ~SAA7146_USE_I2C_IRQ;
  for (i = 1; ; i++) {
   if (-1 == mxb_saa7740_init[i].length)
    break;

   msg.len = mxb_saa7740_init[i].length;
   msg.buf = &mxb_saa7740_init[i].data[0];
   err = i2c_transfer(&mxb->i2c_adapter, &msg, 1);
   if (err != 1) {
    DEB_D(("failed to initialize 'sound arena module'.\n"));
    goto err;
   }
  }
  INFO(("'sound arena module' detected.\n"));
 }
err:






 saa7146_set_hps_source_and_sync(dev, input_port_selection[mxb->cur_input].hps_source,
   input_port_selection[mxb->cur_input].hps_sync);





 saa7146_write(dev, DD1_STREAM_B, 0x00000000);
 saa7146_write(dev, DD1_INIT, 0x02000200);
 saa7146_write(dev, MC2, (MASK_09 | MASK_25 | MASK_10 | MASK_26));

 return 0;
}
