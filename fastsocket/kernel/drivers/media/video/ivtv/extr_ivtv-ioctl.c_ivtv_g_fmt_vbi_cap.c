
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_vbi_format {int sampling_rate; int offset; scalar_t__* reserved; scalar_t__ flags; int * count; int * start; int sample_format; scalar_t__ samples_per_line; } ;
struct TYPE_3__ {struct v4l2_vbi_format vbi; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct TYPE_4__ {int count; int * start; scalar_t__ raw_decoder_line_size; } ;
struct ivtv {TYPE_2__ vbi; } ;
struct file {int dummy; } ;


 int V4L2_PIX_FMT_GREY ;

__attribute__((used)) static int ivtv_g_fmt_vbi_cap(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;
 struct v4l2_vbi_format *vbifmt = &fmt->fmt.vbi;

 vbifmt->sampling_rate = 27000000;
 vbifmt->offset = 248;
 vbifmt->samples_per_line = itv->vbi.raw_decoder_line_size - 4;
 vbifmt->sample_format = V4L2_PIX_FMT_GREY;
 vbifmt->start[0] = itv->vbi.start[0];
 vbifmt->start[1] = itv->vbi.start[1];
 vbifmt->count[0] = vbifmt->count[1] = itv->vbi.count;
 vbifmt->flags = 0;
 vbifmt->reserved[0] = 0;
 vbifmt->reserved[1] = 0;
 return 0;
}
