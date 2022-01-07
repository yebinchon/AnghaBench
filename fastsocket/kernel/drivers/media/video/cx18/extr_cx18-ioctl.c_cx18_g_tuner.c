
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int type; int name; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int i_flags; } ;


 int CX18_F_I_RADIO_USER ;
 int EINVAL ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_RADIO ;
 int cx18_call_all (struct cx18*,int ,int ,struct v4l2_tuner*) ;
 int g_tuner ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int tuner ;

__attribute__((used)) static int cx18_g_tuner(struct file *file, void *fh, struct v4l2_tuner *vt)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;

 if (vt->index != 0)
  return -EINVAL;

 cx18_call_all(cx, tuner, g_tuner, vt);

 if (test_bit(CX18_F_I_RADIO_USER, &cx->i_flags)) {
  strlcpy(vt->name, "cx18 Radio Tuner", sizeof(vt->name));
  vt->type = V4L2_TUNER_RADIO;
 } else {
  strlcpy(vt->name, "cx18 TV Tuner", sizeof(vt->name));
  vt->type = V4L2_TUNER_ANALOG_TV;
 }

 return 0;
}
