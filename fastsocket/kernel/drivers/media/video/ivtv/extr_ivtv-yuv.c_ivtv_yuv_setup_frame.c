
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct yuv_frame_info {int update; int src_x; int src_h; int dst_h; int tru_w; int tru_h; int offset_y; int interlaced_y; int interlaced_uv; int delay; scalar_t__ sync_field; int lace_mode; int interlaced; int tru_x; int dst_w; int dst_y; int dst_x; int src_w; int src_y; } ;
struct yuv_playback_info {int draw_frame; int lace_threshold; int lace_mode; int decode_height; scalar_t__ lace_sync_field; struct yuv_frame_info old_frame_info_args; struct yuv_frame_info* new_frame_info; } ;
struct TYPE_4__ {int height; int left; int width; int top; } ;
struct TYPE_3__ {int left; int height; int width; int top; } ;
struct ivtv_dma_frame {int src_width; int src_height; TYPE_2__ dst; TYPE_1__ src; } ;
struct ivtv {struct yuv_playback_info yuv_info; } ;


 int IVTV_DEBUG_YUV (char*,int) ;
 int IVTV_YUV_BUFFERS ;


 int IVTV_YUV_MODE_MASK ;

 scalar_t__ memcmp (struct yuv_frame_info*,struct yuv_frame_info*,int) ;

__attribute__((used)) static void ivtv_yuv_setup_frame(struct ivtv *itv, struct ivtv_dma_frame *args)
{
 struct yuv_playback_info *yi = &itv->yuv_info;
 u8 frame = yi->draw_frame;
 u8 last_frame = (u8)(frame - 1) % IVTV_YUV_BUFFERS;
 struct yuv_frame_info *nf = &yi->new_frame_info[frame];
 struct yuv_frame_info *of = &yi->new_frame_info[last_frame];
 int lace_threshold = yi->lace_threshold;


 int update = nf->update;


 nf->src_x = args->src.left;
 nf->src_y = args->src.top;
 nf->src_w = args->src.width;
 nf->src_h = args->src.height;
 nf->dst_x = args->dst.left;
 nf->dst_y = args->dst.top;
 nf->dst_w = args->dst.width;
 nf->dst_h = args->dst.height;
 nf->tru_x = args->dst.left;
 nf->tru_w = args->src_width;
 nf->tru_h = args->src_height;


 nf->offset_y = (nf->tru_h + nf->src_x < 512 - 16) ? 1 : 0;

 nf->update = 0;
 nf->interlaced_y = 0;
 nf->interlaced_uv = 0;
 nf->delay = 0;
 nf->sync_field = 0;
 nf->lace_mode = yi->lace_mode & IVTV_YUV_MODE_MASK;

 if (lace_threshold < 0)
  lace_threshold = yi->decode_height - 1;


 switch (nf->lace_mode) {
 case 128:
  nf->interlaced = 0;
  if (nf->tru_h < 512 || (nf->tru_h > 576 && nf->tru_h < 1021))
   nf->interlaced_y = 0;
  else
   nf->interlaced_y = 1;

  if (nf->tru_h < 1021 && (nf->dst_h >= nf->src_h / 2))
   nf->interlaced_uv = 0;
  else
   nf->interlaced_uv = 1;
  break;

 case 130:
  if (nf->tru_h <= lace_threshold || nf->tru_h > 576 || nf->tru_w > 720) {
   nf->interlaced = 0;
   if ((nf->tru_h < 512) ||
       (nf->tru_h > 576 && nf->tru_h < 1021) ||
       (nf->tru_w > 720 && nf->tru_h < 1021))
    nf->interlaced_y = 0;
   else
    nf->interlaced_y = 1;
   if (nf->tru_h < 1021 && (nf->dst_h >= nf->src_h / 2))
    nf->interlaced_uv = 0;
   else
    nf->interlaced_uv = 1;
  } else {
   nf->interlaced = 1;
   nf->interlaced_y = 1;
   nf->interlaced_uv = 1;
  }
  break;

 case 129:
 default:
  nf->interlaced = 1;
  nf->interlaced_y = 1;
  nf->interlaced_uv = 1;
  break;
 }

 if (memcmp(&yi->old_frame_info_args, nf, sizeof(*nf))) {
  yi->old_frame_info_args = *nf;
  nf->update = 1;
  IVTV_DEBUG_YUV("Requesting reg update for frame %d\n", frame);
 }

 nf->update |= update;
 nf->sync_field = yi->lace_sync_field;
 nf->delay = nf->sync_field != of->sync_field;
}
