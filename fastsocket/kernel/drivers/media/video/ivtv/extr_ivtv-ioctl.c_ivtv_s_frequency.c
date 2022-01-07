
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int IVTV_DEBUG_INFO (char*,int ) ;
 int ivtv_call_all (struct ivtv*,int ,int ,struct v4l2_frequency*) ;
 int ivtv_mute (struct ivtv*) ;
 int ivtv_unmute (struct ivtv*) ;
 int s_frequency ;
 int tuner ;

int ivtv_s_frequency(struct file *file, void *fh, struct v4l2_frequency *vf)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 if (vf->tuner != 0)
  return -EINVAL;

 ivtv_mute(itv);
 IVTV_DEBUG_INFO("v4l2 ioctl: set frequency %d\n", vf->frequency);
 ivtv_call_all(itv, tuner, s_frequency, vf);
 ivtv_unmute(itv);
 return 0;
}
