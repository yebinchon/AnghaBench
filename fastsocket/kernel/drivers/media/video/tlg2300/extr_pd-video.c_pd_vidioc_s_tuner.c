
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int audio_idx; int tvnormid; } ;
struct TYPE_5__ {TYPE_1__ context; } ;
struct poseidon {int lock; TYPE_2__ video_data; } ;
typedef int s32 ;
struct TYPE_6__ {int tlg_audio_mode; } ;


 int TUNER_AUD_ANA_STD ;
 int TUNER_AUD_MODE ;
 int get_audio_std (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_3__* pd_audio_modes ;
 int send_set_req (struct poseidon*,int ,int,int*) ;

__attribute__((used)) static int pd_vidioc_s_tuner(struct poseidon *pd, int index)
{
 s32 ret = 0, cmd_status, param, audiomode;

 mutex_lock(&pd->lock);
 param = pd_audio_modes[index].tlg_audio_mode;
 ret = send_set_req(pd, TUNER_AUD_MODE, param, &cmd_status);
 audiomode = get_audio_std(pd->video_data.context.tvnormid);
 ret |= send_set_req(pd, TUNER_AUD_ANA_STD, audiomode,
    &cmd_status);
 if (!ret)
  pd->video_data.context.audio_idx = index;
 mutex_unlock(&pd->lock);
 return ret;
}
