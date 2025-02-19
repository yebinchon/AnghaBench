
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ivtv_call_all (struct ivtv*,int ,int ,struct v4l2_tuner*) ;
 int s_tuner ;
 int tuner ;

__attribute__((used)) static int ivtv_s_tuner(struct file *file, void *fh, struct v4l2_tuner *vt)
{
 struct ivtv_open_id *id = fh;
 struct ivtv *itv = id->itv;

 if (vt->index != 0)
  return -EINVAL;

 ivtv_call_all(itv, tuner, s_tuner, vt);

 return 0;
}
