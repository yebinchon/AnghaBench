
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int type; int name; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int i_flags; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int IVTV_F_I_RADIO_USER ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_RADIO ;
 int g_tuner ;
 int ivtv_call_all (struct ivtv*,int ,int ,struct v4l2_tuner*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int tuner ;

__attribute__((used)) static int ivtv_g_tuner(struct file *file, void *fh, struct v4l2_tuner *vt)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 if (vt->index != 0)
  return -EINVAL;

 ivtv_call_all(itv, tuner, g_tuner, vt);

 if (test_bit(IVTV_F_I_RADIO_USER, &itv->i_flags)) {
  strlcpy(vt->name, "ivtv Radio Tuner", sizeof(vt->name));
  vt->type = V4L2_TUNER_RADIO;
 } else {
  strlcpy(vt->name, "ivtv TV Tuner", sizeof(vt->name));
  vt->type = V4L2_TUNER_ANALOG_TV;
 }

 return 0;
}
