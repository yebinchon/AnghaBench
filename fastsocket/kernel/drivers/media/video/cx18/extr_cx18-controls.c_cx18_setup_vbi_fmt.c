
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int insert_mpeg; TYPE_2__* sliced_in; int ** sliced_mpeg_data; } ;
struct cx18 {int v4l2_cap; int is_50hz; TYPE_1__ vbi; scalar_t__ is_60hz; int ana_capturing; } ;
typedef enum v4l2_mpeg_stream_vbi_fmt { ____Placeholder_v4l2_mpeg_stream_vbi_fmt } v4l2_mpeg_stream_vbi_fmt ;
typedef enum v4l2_mpeg_stream_type { ____Placeholder_v4l2_mpeg_stream_type } v4l2_mpeg_stream_type ;
struct TYPE_5__ {int service_set; } ;


 int CX18_DEBUG_INFO (char*) ;
 int CX18_SLICED_MPEG_DATA_BUFSZ ;
 int CX18_VBI_FRAMES ;
 int CX18_WARN (char*) ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_CAP_SLICED_VBI_CAPTURE ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_DVD ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_PS ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD ;
 int V4L2_MPEG_STREAM_VBI_FMT_IVTV ;
 void* V4L2_MPEG_STREAM_VBI_FMT_NONE ;
 int V4L2_SLICED_CAPTION_525 ;
 int V4L2_SLICED_WSS_625 ;
 scalar_t__ atomic_read (int *) ;
 int cx18_expand_service_set (TYPE_2__*,int ) ;
 scalar_t__ cx18_get_service_set (TYPE_2__*) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;

__attribute__((used)) static int cx18_setup_vbi_fmt(struct cx18 *cx,
         enum v4l2_mpeg_stream_vbi_fmt fmt,
         enum v4l2_mpeg_stream_type type)
{
 if (!(cx->v4l2_cap & V4L2_CAP_SLICED_VBI_CAPTURE))
  return -EINVAL;
 if (atomic_read(&cx->ana_capturing) > 0)
  return -EBUSY;

 if (fmt != V4L2_MPEG_STREAM_VBI_FMT_IVTV ||
     !(type == V4L2_MPEG_STREAM_TYPE_MPEG2_PS ||
       type == V4L2_MPEG_STREAM_TYPE_MPEG2_DVD ||
       type == V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD)) {

  cx->vbi.insert_mpeg = V4L2_MPEG_STREAM_VBI_FMT_NONE;
  CX18_DEBUG_INFO("disabled insertion of sliced VBI data into "
    "the MPEG stream\n");
  return 0;
 }


 if (cx->vbi.sliced_mpeg_data[0] == ((void*)0)) {
  int i;

  for (i = 0; i < CX18_VBI_FRAMES; i++) {
   cx->vbi.sliced_mpeg_data[i] =
          kmalloc(CX18_SLICED_MPEG_DATA_BUFSZ, GFP_KERNEL);
   if (cx->vbi.sliced_mpeg_data[i] == ((void*)0)) {
    while (--i >= 0) {
     kfree(cx->vbi.sliced_mpeg_data[i]);
     cx->vbi.sliced_mpeg_data[i] = ((void*)0);
    }
    cx->vbi.insert_mpeg =
        V4L2_MPEG_STREAM_VBI_FMT_NONE;
    CX18_WARN("Unable to allocate buffers for "
       "sliced VBI data insertion\n");
    return -ENOMEM;
   }
  }
 }

 cx->vbi.insert_mpeg = fmt;
 CX18_DEBUG_INFO("enabled insertion of sliced VBI data into the MPEG PS,"
   "when sliced VBI is enabled\n");





 if (cx18_get_service_set(cx->vbi.sliced_in) == 0) {
  if (cx->is_60hz)
   cx->vbi.sliced_in->service_set =
       V4L2_SLICED_CAPTION_525;
  else
   cx->vbi.sliced_in->service_set = V4L2_SLICED_WSS_625;
  cx18_expand_service_set(cx->vbi.sliced_in, cx->is_50hz);
 }
 return 0;
}
