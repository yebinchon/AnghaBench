
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; } ;
struct TYPE_14__ {int gamma; int white_y; int white_x; int blue_y; int blue_x; int green_y; int green_x; int red_y; int red_x; } ;
struct TYPE_13__ {int yuv422; int yuv444; int rgb; } ;
struct TYPE_12__ {int native; int res_bits; } ;
struct TYPE_11__ {int native; int res_bits; } ;
struct TYPE_10__ {int native; int res_bits; } ;
struct TYPE_9__ {int native; int res_bits; } ;
struct ps3av_info_monitor {int* monitor_id; int num_of_audio_block; int speaker_info; int supported_ai; TYPE_7__ color; TYPE_6__ cs; TYPE_5__ res_vesa; TYPE_4__ res_other; TYPE_3__ res_50; TYPE_2__ res_60; int monitor_name; int monitor_type; int avport; struct ps3av_info_audio* audio; } ;
struct ps3av_pkt_av_get_monitor_info {TYPE_1__ send_hdr; struct ps3av_info_monitor info; } ;
struct ps3av_info_audio {int sbit; int fs; int max_num_of_ch; int type; } ;


 int pr_debug (char*,...) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void ps3av_monitor_info_dump(const struct ps3av_pkt_av_get_monitor_info *monitor_info)
{
 const struct ps3av_info_monitor *info = &monitor_info->info;
 const struct ps3av_info_audio *audio = info->audio;
 char id[sizeof(info->monitor_id)*3+1];
 int i;

 pr_debug("Monitor Info: size %u\n", monitor_info->send_hdr.size);

 pr_debug("avport: %02x\n", info->avport);
 for (i = 0; i < sizeof(info->monitor_id); i++)
  sprintf(&id[i*3], " %02x", info->monitor_id[i]);
 pr_debug("monitor_id: %s\n", id);
 pr_debug("monitor_type: %02x\n", info->monitor_type);
 pr_debug("monitor_name: %.*s\n", (int)sizeof(info->monitor_name),
   info->monitor_name);


 pr_debug("resolution_60: bits: %08x native: %08x\n",
   info->res_60.res_bits, info->res_60.native);
 pr_debug("resolution_50: bits: %08x native: %08x\n",
   info->res_50.res_bits, info->res_50.native);
 pr_debug("resolution_other: bits: %08x native: %08x\n",
   info->res_other.res_bits, info->res_other.native);
 pr_debug("resolution_vesa: bits: %08x native: %08x\n",
   info->res_vesa.res_bits, info->res_vesa.native);


 pr_debug("color space    rgb: %02x\n", info->cs.rgb);
 pr_debug("color space yuv444: %02x\n", info->cs.yuv444);
 pr_debug("color space yuv422: %02x\n", info->cs.yuv422);


 pr_debug("color info   red: X %04x Y %04x\n", info->color.red_x,
   info->color.red_y);
 pr_debug("color info green: X %04x Y %04x\n", info->color.green_x,
   info->color.green_y);
 pr_debug("color info  blue: X %04x Y %04x\n", info->color.blue_x,
   info->color.blue_y);
 pr_debug("color info white: X %04x Y %04x\n", info->color.white_x,
   info->color.white_y);
 pr_debug("color info gamma:  %08x\n", info->color.gamma);


 pr_debug("supported_AI: %02x\n", info->supported_ai);
 pr_debug("speaker_info: %02x\n", info->speaker_info);
 pr_debug("num of audio: %02x\n", info->num_of_audio_block);


 for (i = 0; i < info->num_of_audio_block; i++) {
  pr_debug("audio[%d] type: %02x max_ch: %02x fs: %02x sbit: "
    "%02x\n",
    i, audio->type, audio->max_num_of_ch, audio->fs,
    audio->sbit);
  audio++;
 }
}
