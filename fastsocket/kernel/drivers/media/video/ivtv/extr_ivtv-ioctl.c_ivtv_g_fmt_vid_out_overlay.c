
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int height; int width; scalar_t__ left; scalar_t__ top; } ;
struct v4l2_window {TYPE_2__ w; int * bitmap; scalar_t__ clipcount; int * clips; int field; int global_alpha; int chromakey; } ;
struct TYPE_4__ {struct v4l2_window win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct TYPE_6__ {int height; int width; } ;
struct ivtv {int v4l2_cap; TYPE_3__ osd_rect; int osd_global_alpha; int osd_chroma_key; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int V4L2_FIELD_INTERLACED ;

__attribute__((used)) static int ivtv_g_fmt_vid_out_overlay(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;
 struct v4l2_window *winfmt = &fmt->fmt.win;

 if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
  return -EINVAL;
 winfmt->chromakey = itv->osd_chroma_key;
 winfmt->global_alpha = itv->osd_global_alpha;
 winfmt->field = V4L2_FIELD_INTERLACED;
 winfmt->clips = ((void*)0);
 winfmt->clipcount = 0;
 winfmt->bitmap = ((void*)0);
 winfmt->w.top = winfmt->w.left = 0;
 winfmt->w.width = itv->osd_rect.width;
 winfmt->w.height = itv->osd_rect.height;
 return 0;
}
