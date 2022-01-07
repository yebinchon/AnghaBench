
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int dummy; } ;


 int EINVAL ;
 int cx18_call_all (struct cx18*,int ,int ,struct v4l2_frequency*) ;
 int g_frequency ;
 int tuner ;

__attribute__((used)) static int cx18_g_frequency(struct file *file, void *fh,
    struct v4l2_frequency *vf)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;

 if (vf->tuner != 0)
  return -EINVAL;

 cx18_call_all(cx, tuner, g_frequency, vf);
 return 0;
}
