
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yuv_playback_info {int main_rect; } ;
struct v4l2_crop {scalar_t__ type; int c; } ;
struct ivtv_open_id {int type; struct ivtv* itv; } ;
struct ivtv {int v4l2_cap; int main_rect; struct yuv_playback_info yuv_info; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int IVTV_DEC_STREAM_TYPE_YUV ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_CAP_VIDEO_OUTPUT ;

__attribute__((used)) static int ivtv_g_crop(struct file *file, void *fh, struct v4l2_crop *crop)
{
 struct ivtv_open_id *id = fh;
 struct ivtv *itv = id->itv;
 struct yuv_playback_info *yi = &itv->yuv_info;
 int streamtype;

 streamtype = id->type;

 if (crop->type == V4L2_BUF_TYPE_VIDEO_OUTPUT &&
     (itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT)) {
  if (streamtype == IVTV_DEC_STREAM_TYPE_YUV)
   crop->c = yi->main_rect;
  else
   crop->c = itv->main_rect;
  return 0;
 }
 return -EINVAL;
}
