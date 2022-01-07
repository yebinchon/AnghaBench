
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_card {int syt_offset; int cip_d; int cip_n; int pal_or_ntsc; int channel; } ;
struct dv1394_init {int n_frames; int syt_offset; int cip_d; int cip_n; int format; int channel; int api_version; } ;


 int DV1394_API_VERSION ;
 int DV1394_MAX_FRAMES ;
 int do_dv1394_init (struct video_card*,struct dv1394_init*) ;

__attribute__((used)) static int do_dv1394_init_default(struct video_card *video)
{
 struct dv1394_init init;

 init.api_version = DV1394_API_VERSION;
 init.n_frames = DV1394_MAX_FRAMES / 4;
 init.channel = video->channel;
 init.format = video->pal_or_ntsc;
 init.cip_n = video->cip_n;
 init.cip_d = video->cip_d;
 init.syt_offset = video->syt_offset;

 return do_dv1394_init(video, &init);
}
