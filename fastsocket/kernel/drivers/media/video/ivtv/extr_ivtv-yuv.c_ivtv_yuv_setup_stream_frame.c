
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yuv_playback_info {size_t draw_frame; int v4l2_src_h; int v4l2_src_w; int main_rect; } ;
struct TYPE_2__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct ivtv_dma_frame {int src_height; int src_width; int dst; TYPE_1__ src; int * uv_source; int * y_source; } ;
struct ivtv {scalar_t__ dma_data_req_offset; struct yuv_playback_info yuv_info; } ;


 int ivtv_yuv_next_free (struct ivtv*) ;
 int ivtv_yuv_setup_frame (struct ivtv*,struct ivtv_dma_frame*) ;
 scalar_t__* yuv_offset ;

void ivtv_yuv_setup_stream_frame(struct ivtv *itv)
{
 struct yuv_playback_info *yi = &itv->yuv_info;
 struct ivtv_dma_frame dma_args;

 ivtv_yuv_next_free(itv);


 dma_args.y_source = ((void*)0);
 dma_args.uv_source = ((void*)0);
 dma_args.src.left = 0;
 dma_args.src.top = 0;
 dma_args.src.width = yi->v4l2_src_w;
 dma_args.src.height = yi->v4l2_src_h;
 dma_args.dst = yi->main_rect;
 dma_args.src_width = yi->v4l2_src_w;
 dma_args.src_height = yi->v4l2_src_h;


 ivtv_yuv_setup_frame(itv, &dma_args);

 if (!itv->dma_data_req_offset)
  itv->dma_data_req_offset = yuv_offset[yi->draw_frame];
}
