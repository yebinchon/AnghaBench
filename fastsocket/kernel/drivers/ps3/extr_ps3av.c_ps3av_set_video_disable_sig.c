
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_of_hdmi; int num_of_avmulti; } ;
struct TYPE_4__ {int * av_port; TYPE_1__ av_hw_conf; } ;


 int PS3AV_CMD_MUTE_OFF ;
 int PS3AV_CMD_MUTE_ON ;
 int msleep (int) ;
 TYPE_2__* ps3av ;
 int ps3av_cmd_av_tv_mute (int ,int ) ;
 int ps3av_cmd_av_video_disable_sig (int ) ;

__attribute__((used)) static int ps3av_set_video_disable_sig(void)
{
 int i, num_of_hdmi_port, num_of_av_port, res;

 num_of_hdmi_port = ps3av->av_hw_conf.num_of_hdmi;
 num_of_av_port = ps3av->av_hw_conf.num_of_hdmi +
    ps3av->av_hw_conf.num_of_avmulti;


 for (i = 0; i < num_of_hdmi_port; i++) {
  res = ps3av_cmd_av_tv_mute(ps3av->av_port[i],
        PS3AV_CMD_MUTE_ON);
  if (res < 0)
   return -1;
 }
 msleep(100);


 for (i = 0; i < num_of_av_port; i++) {
  res = ps3av_cmd_av_video_disable_sig(ps3av->av_port[i]);
  if (res < 0)
   return -1;
  if (i < num_of_hdmi_port) {
   res = ps3av_cmd_av_tv_mute(ps3av->av_port[i],
         PS3AV_CMD_MUTE_OFF);
   if (res < 0)
    return -1;
  }
 }
 msleep(300);

 return 0;
}
