
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int g_frequency ;
 int ivtv_call_all (struct ivtv*,int ,int ,struct v4l2_frequency*) ;
 int tuner ;

__attribute__((used)) static int ivtv_g_frequency(struct file *file, void *fh, struct v4l2_frequency *vf)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 if (vf->tuner != 0)
  return -EINVAL;

 ivtv_call_all(itv, tuner, g_frequency, vf);
 return 0;
}
