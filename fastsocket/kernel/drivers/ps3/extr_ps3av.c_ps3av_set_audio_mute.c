
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int num_of_hdmi; int num_of_avmulti; int num_of_spdif; } ;
struct TYPE_4__ {int * opt_port; int * av_port; TYPE_1__ av_hw_conf; } ;


 TYPE_2__* ps3av ;
 int ps3av_cmd_audio_mute (int,int *,int ) ;
 int ps3av_cmd_av_audio_mute (int,int *,int ) ;

__attribute__((used)) static int ps3av_set_audio_mute(u32 mute)
{
 int i, num_of_av_port, num_of_opt_port, res;

 num_of_av_port = ps3av->av_hw_conf.num_of_hdmi +
    ps3av->av_hw_conf.num_of_avmulti;
 num_of_opt_port = ps3av->av_hw_conf.num_of_spdif;

 for (i = 0; i < num_of_av_port; i++) {
  res = ps3av_cmd_av_audio_mute(1, &ps3av->av_port[i], mute);
  if (res < 0)
   return -1;
 }
 for (i = 0; i < num_of_opt_port; i++) {
  res = ps3av_cmd_audio_mute(1, &ps3av->opt_port[i], mute);
  if (res < 0)
   return -1;
 }

 return 0;
}
