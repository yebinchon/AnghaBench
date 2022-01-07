
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ps3av_pkt_av_audio_param {int avport; int mclk; int swaplr; int inputctrl; int chstat; int info; int layout; int inputlen; int fifomap; int enable; int ns; int send_hdr; } ;
struct ps3av_pkt_audio_mode {int audio_cs_info; int audio_num_of_ch; int audio_word_bits; int audio_map; int audio_enable; int audio_source; int audio_fs; } ;


 int PS3AV_CID_AV_AUDIO_PARAM ;
 int memset (struct ps3av_pkt_av_audio_param*,int ,int) ;
 int ps3av_cnv_chstat (int ,int ) ;
 int ps3av_cnv_enable (int ,int ) ;
 int ps3av_cnv_fifomap (int ) ;
 int ps3av_cnv_info (int *,struct ps3av_pkt_audio_mode const*) ;
 int ps3av_cnv_inputlen (int ) ;
 int ps3av_cnv_layout (int ) ;
 int ps3av_cnv_mclk (int ) ;
 int ps3av_cnv_ns (int ,int ,int) ;
 int ps3av_set_hdr (int ,int,int *) ;

u32 ps3av_cmd_set_av_audio_param(void *p, u32 port,
     const struct ps3av_pkt_audio_mode *audio_mode,
     u32 video_vid)
{
 struct ps3av_pkt_av_audio_param *param;

 param = (struct ps3av_pkt_av_audio_param *)p;

 memset(param, 0, sizeof(*param));
 ps3av_set_hdr(PS3AV_CID_AV_AUDIO_PARAM, sizeof(*param),
        &param->send_hdr);

 param->avport = port;
 param->mclk = ps3av_cnv_mclk(audio_mode->audio_fs) | 0x80;
 ps3av_cnv_ns(param->ns, audio_mode->audio_fs, video_vid);
 param->enable = ps3av_cnv_enable(audio_mode->audio_source,
      audio_mode->audio_enable);
 param->swaplr = 0x09;
 param->fifomap = ps3av_cnv_fifomap(audio_mode->audio_map);
 param->inputctrl = 0x49;
 param->inputlen = ps3av_cnv_inputlen(audio_mode->audio_word_bits);
 param->layout = ps3av_cnv_layout(audio_mode->audio_num_of_ch);
 ps3av_cnv_info(&param->info, audio_mode);
 ps3av_cnv_chstat(param->chstat, audio_mode->audio_cs_info);

 return sizeof(*param);
}
