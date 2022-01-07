
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; void* height; void* width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct ivtv_open_id {scalar_t__ type; } ;
struct file {int dummy; } ;
typedef void* s32 ;


 scalar_t__ IVTV_DEC_STREAM_TYPE_YUV ;
 int ivtv_g_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;
 void* max (void*,int) ;
 void* min (void*,int) ;

__attribute__((used)) static int ivtv_try_fmt_vid_out(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct ivtv_open_id *id = fh;
 s32 w = fmt->fmt.pix.width;
 s32 h = fmt->fmt.pix.height;
 int field = fmt->fmt.pix.field;
 int ret = ivtv_g_fmt_vid_out(file, fh, fmt);

 w = min(w, 720);
 w = max(w, 2);
 h = min(h, 576);
 h = max(h, 2);
 if (id->type == IVTV_DEC_STREAM_TYPE_YUV)
  fmt->fmt.pix.field = field;
 fmt->fmt.pix.width = w;
 fmt->fmt.pix.height = h;
 return ret;
}
