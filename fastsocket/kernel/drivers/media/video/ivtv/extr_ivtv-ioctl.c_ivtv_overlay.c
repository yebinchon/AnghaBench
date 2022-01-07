
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int v4l2_cap; } ;
struct file {int dummy; } ;


 int CX2341X_OSD_SET_STATE ;
 int EINVAL ;
 int V4L2_CAP_VIDEO_OUTPUT_OVERLAY ;
 int ivtv_vapi (struct ivtv*,int ,int,int) ;

__attribute__((used)) static int ivtv_overlay(struct file *file, void *fh, unsigned int on)
{
 struct ivtv_open_id *id = fh;
 struct ivtv *itv = id->itv;

 if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT_OVERLAY))
  return -EINVAL;

 ivtv_vapi(itv, CX2341X_OSD_SET_STATE, 1, on != 0);

 return 0;
}
