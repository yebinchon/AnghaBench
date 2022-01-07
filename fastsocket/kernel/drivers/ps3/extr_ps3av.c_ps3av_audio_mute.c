
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS3AV_CMD_MUTE_OFF ;
 int PS3AV_CMD_MUTE_ON ;
 int ps3av_set_audio_mute (int ) ;

int ps3av_audio_mute(int mute)
{
 return ps3av_set_audio_mute(mute ? PS3AV_CMD_MUTE_ON
      : PS3AV_CMD_MUTE_OFF);
}
