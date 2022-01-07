
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int vbi; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ in; TYPE_4__* sliced_in; } ;
struct ivtv {int sd_video; TYPE_2__ vbi; int capturing; } ;
struct file {int dummy; } ;
struct TYPE_8__ {scalar_t__ service_set; } ;


 int EBUSY ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ atomic_read (int *) ;
 int ivtv_g_fmt_vbi_cap (struct file*,void*,struct v4l2_format*) ;
 int ivtv_raw_vbi (struct ivtv*) ;
 int s_raw_fmt ;
 int v4l2_subdev_call (int ,int ,int ,int *) ;
 int vbi ;

__attribute__((used)) static int ivtv_s_fmt_vbi_cap(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 if (!ivtv_raw_vbi(itv) && atomic_read(&itv->capturing) > 0)
  return -EBUSY;
 itv->vbi.sliced_in->service_set = 0;
 itv->vbi.in.type = V4L2_BUF_TYPE_VBI_CAPTURE;
 v4l2_subdev_call(itv->sd_video, vbi, s_raw_fmt, &fmt->fmt.vbi);
 return ivtv_g_fmt_vbi_cap(file, fh, fmt);
}
