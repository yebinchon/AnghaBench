
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_flags; struct dvb_device* private_data; } ;
struct dvb_device {struct av7110* priv; } ;
struct TYPE_2__ {int mute_state; int AV_sync_state; int bypass_mode; int channel_select; int stream_source; void* play_state; } ;
struct av7110 {int playing; int * ipack; int aout; int arm_app; TYPE_1__ audiostate; int adac_type; } ;
struct audio_status {int dummy; } ;
struct audio_mixer {int volume_right; int volume_left; } ;
typedef int audio_stream_source_t ;
typedef int audio_channel_select_t ;


 unsigned int AUDIO_CAP_AC3 ;
 unsigned int AUDIO_CAP_DTS ;
 unsigned int AUDIO_CAP_LPCM ;
 unsigned int AUDIO_CAP_MP1 ;
 unsigned int AUDIO_CAP_MP2 ;


 int AUDIO_CMD_MONO_L ;
 int AUDIO_CMD_MONO_R ;
 int AUDIO_CMD_MUTE ;
 int AUDIO_CMD_PCM16 ;
 int AUDIO_CMD_STEREO ;
 int AUDIO_CMD_SYNC_OFF ;
 int AUDIO_CMD_SYNC_ON ;
 int AUDIO_CMD_UNMUTE ;






 void* AUDIO_PAUSED ;

 void* AUDIO_PLAYING ;







 int AUDIO_SOURCE_MEMORY ;


 void* AUDIO_STOPPED ;
 int AV_PES ;
 int COMTYPE_REC_PLAY ;
 int DVB_ADAC_CRYSTAL ;
 int DVB_ADAC_MSP34x5 ;
 int EINVAL ;
 int ENOIOCTLCMD ;
 int EPERM ;
 int FW_VERSION (int ) ;
 int MSP_WR_DSP ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int RP_AUDIO ;
 int RP_AV ;
 int __Play ;
 int audcom (struct av7110*,int) ;
 int av7110_av_start_play (struct av7110*,int ) ;
 int av7110_av_stop (struct av7110*,int ) ;
 int av7110_fw_cmd (struct av7110*,int ,int ,int,int ,int ) ;
 int av7110_ipack_reset (int *) ;
 int av7110_set_volume (struct av7110*,int ,int ) ;
 int dprintk (int,char*,struct av7110*,unsigned int) ;
 int dvb_ringbuffer_flush_spinlock_wakeup (int *) ;
 int i2c_writereg (struct av7110*,int,int,int) ;
 int memcpy (void*,TYPE_1__*,int) ;
 int msp_writereg (struct av7110*,int ,int,int) ;

__attribute__((used)) static int dvb_audio_ioctl(struct inode *inode, struct file *file,
      unsigned int cmd, void *parg)
{
 struct dvb_device *dvbdev = file->private_data;
 struct av7110 *av7110 = dvbdev->priv;
 unsigned long arg = (unsigned long) parg;
 int ret = 0;

 dprintk(1, "av7110:%p, cmd=%04x\n", av7110,cmd);

 if (((file->f_flags & O_ACCMODE) == O_RDONLY) &&
     (cmd != 141))
  return -EPERM;

 switch (cmd) {
 case 128:
  if (av7110->audiostate.stream_source == AUDIO_SOURCE_MEMORY)
   ret = av7110_av_stop(av7110, RP_AUDIO);
  else
   ret = audcom(av7110, AUDIO_CMD_MUTE);
  if (!ret)
   av7110->audiostate.play_state = AUDIO_STOPPED;
  break;

 case 137:
  if (av7110->audiostate.stream_source == AUDIO_SOURCE_MEMORY)
   ret = av7110_av_start_play(av7110, RP_AUDIO);
  if (!ret)
   ret = audcom(av7110, AUDIO_CMD_UNMUTE);
  if (!ret)
   av7110->audiostate.play_state = AUDIO_PLAYING;
  break;

 case 138:
  ret = audcom(av7110, AUDIO_CMD_MUTE);
  if (!ret)
   av7110->audiostate.play_state = AUDIO_PAUSED;
  break;

 case 143:
  if (av7110->audiostate.play_state == AUDIO_PAUSED) {
   av7110->audiostate.play_state = AUDIO_PLAYING;
   ret = audcom(av7110, AUDIO_CMD_UNMUTE | AUDIO_CMD_PCM16);
  }
  break;

 case 136:
  av7110->audiostate.stream_source = (audio_stream_source_t) arg;
  break;

 case 131:
 {
  ret = audcom(av7110, arg ? AUDIO_CMD_MUTE : AUDIO_CMD_UNMUTE);
  if (!ret)
   av7110->audiostate.mute_state = (int) arg;
  break;
 }

 case 135:
  av7110->audiostate.AV_sync_state = (int) arg;
  ret = audcom(av7110, arg ? AUDIO_CMD_SYNC_ON : AUDIO_CMD_SYNC_OFF);
  break;

 case 134:
  if (FW_VERSION(av7110->arm_app) < 0x2621)
   ret = -EINVAL;
  av7110->audiostate.bypass_mode = (int)arg;
  break;

 case 145:
  av7110->audiostate.channel_select = (audio_channel_select_t) arg;
  switch(av7110->audiostate.channel_select) {
  case 129:
   ret = audcom(av7110, AUDIO_CMD_STEREO);
   if (!ret) {
    if (av7110->adac_type == DVB_ADAC_CRYSTAL)
     i2c_writereg(av7110, 0x20, 0x02, 0x49);
    else if (av7110->adac_type == DVB_ADAC_MSP34x5)
     msp_writereg(av7110, MSP_WR_DSP, 0x0008, 0x0220);
   }
   break;
  case 140:
   ret = audcom(av7110, AUDIO_CMD_MONO_L);
   if (!ret) {
    if (av7110->adac_type == DVB_ADAC_CRYSTAL)
     i2c_writereg(av7110, 0x20, 0x02, 0x4a);
    else if (av7110->adac_type == DVB_ADAC_MSP34x5)
     msp_writereg(av7110, MSP_WR_DSP, 0x0008, 0x0200);
   }
   break;
  case 139:
   ret = audcom(av7110, AUDIO_CMD_MONO_R);
   if (!ret) {
    if (av7110->adac_type == DVB_ADAC_CRYSTAL)
     i2c_writereg(av7110, 0x20, 0x02, 0x45);
    else if (av7110->adac_type == DVB_ADAC_MSP34x5)
     msp_writereg(av7110, MSP_WR_DSP, 0x0008, 0x0210);
   }
   break;
  default:
   ret = -EINVAL;
   break;
  }
  break;

 case 141:
  memcpy(parg, &av7110->audiostate, sizeof(struct audio_status));
  break;

 case 142:
  if (FW_VERSION(av7110->arm_app) < 0x2621)
   *(unsigned int *)parg = AUDIO_CAP_LPCM | AUDIO_CAP_MP1 | AUDIO_CAP_MP2;
  else
   *(unsigned int *)parg = AUDIO_CAP_LPCM | AUDIO_CAP_DTS | AUDIO_CAP_AC3 |
      AUDIO_CAP_MP1 | AUDIO_CAP_MP2;
  break;

 case 144:
  dvb_ringbuffer_flush_spinlock_wakeup(&av7110->aout);
  av7110_ipack_reset(&av7110->ipack[0]);
  if (av7110->playing == RP_AV)
   ret = av7110_fw_cmd(av7110, COMTYPE_REC_PLAY,
         __Play, 2, AV_PES, 0);
  break;

 case 133:
  break;

 case 132:
 {
  struct audio_mixer *amix = (struct audio_mixer *)parg;
  ret = av7110_set_volume(av7110, amix->volume_left, amix->volume_right);
  break;
 }

 case 130:
  break;

 default:
  ret = -ENOIOCTLCMD;
 }

 return ret;
}
