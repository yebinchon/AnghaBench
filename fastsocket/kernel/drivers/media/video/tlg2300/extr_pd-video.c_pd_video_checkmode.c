
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tvnormid; } ;
struct TYPE_4__ {TYPE_1__ context; } ;
struct poseidon {TYPE_2__ video_data; scalar_t__ cur_transfer_mode; int udev; } ;
typedef int s32 ;


 int ATV_AUDIO_RATE_48K ;
 int AUDIO_SAMPLE_RATE_SEL ;
 int BULK_ALTERNATE_IFACE ;
 int HZ ;
 int ISO_3K_BULK_ALTERNATE_IFACE ;
 int SGNL_SRC_SEL ;
 int TASK_INTERRUPTIBLE ;
 int TLG_MODE_ANALOG_TV ;
 int TLG_SIG_SRC_ANTENNA ;
 int TLG_TUNER_VID_FORMAT_YUV ;
 int TLG_TUNE_TVAUDIO_MODE_STEREO ;
 int TLG_TUNE_VID_RES_720 ;
 int TLG_TUNE_VSTD_PAL_D ;
 int TUNER_AUD_ANA_STD ;
 int TUNER_AUD_MODE ;
 int TUNER_FREQ_MIN ;
 int TUNE_FREQ_SELECT ;
 int VBI_DATA_SEL ;
 int VIDEO_ROSOLU_SEL ;
 int VIDEO_STD_SEL ;
 int VIDEO_STREAM_FMT_SEL ;
 int get_audio_std (int ) ;
 int schedule_timeout (int) ;
 int send_set_req (struct poseidon*,int ,int,int*) ;
 int set_current_state (int ) ;
 int set_tuner_mode (struct poseidon*,int ) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int pd_video_checkmode(struct poseidon *pd)
{
 s32 ret = 0, cmd_status, audiomode;

 set_current_state(TASK_INTERRUPTIBLE);
 schedule_timeout(HZ/2);


 ret = usb_set_interface(pd->udev, 0,
     (pd->cur_transfer_mode ?
      ISO_3K_BULK_ALTERNATE_IFACE :
      BULK_ALTERNATE_IFACE));
 if (ret < 0)
  goto error;


 ret = set_tuner_mode(pd, TLG_MODE_ANALOG_TV);
 ret |= send_set_req(pd, SGNL_SRC_SEL,
    TLG_SIG_SRC_ANTENNA, &cmd_status);
 ret |= send_set_req(pd, VIDEO_STD_SEL,
    TLG_TUNE_VSTD_PAL_D, &cmd_status);
 ret |= send_set_req(pd, VIDEO_STREAM_FMT_SEL,
    TLG_TUNER_VID_FORMAT_YUV, &cmd_status);
 ret |= send_set_req(pd, VIDEO_ROSOLU_SEL,
    TLG_TUNE_VID_RES_720, &cmd_status);
 ret |= send_set_req(pd, TUNE_FREQ_SELECT, TUNER_FREQ_MIN, &cmd_status);
 ret |= send_set_req(pd, VBI_DATA_SEL, 1, &cmd_status);


 audiomode = get_audio_std(pd->video_data.context.tvnormid);
 ret |= send_set_req(pd, TUNER_AUD_ANA_STD, audiomode, &cmd_status);
 ret |= send_set_req(pd, TUNER_AUD_MODE,
    TLG_TUNE_TVAUDIO_MODE_STEREO, &cmd_status);
 ret |= send_set_req(pd, AUDIO_SAMPLE_RATE_SEL,
    ATV_AUDIO_RATE_48K, &cmd_status);
error:
 return ret;
}
