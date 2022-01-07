
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int global_alpha; int chromakey; } ;
struct TYPE_4__ {TYPE_1__ win; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int v4l2_cap; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int ivtv_g_fmt_vid_out_overlay (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int ivtv_try_fmt_vid_out_overlay(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;
 u32 chromakey = fmt->fmt.win.chromakey;
 u8 global_alpha = fmt->fmt.win.global_alpha;

 if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
  return -EINVAL;
 ivtv_g_fmt_vid_out_overlay(file, fh, fmt);
 fmt->fmt.win.chromakey = chromakey;
 fmt->fmt.win.global_alpha = global_alpha;
 return 0;
}
