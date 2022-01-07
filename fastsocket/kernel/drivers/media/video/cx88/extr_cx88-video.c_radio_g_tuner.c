
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int type; int name; } ;
struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct cx8800_fh {TYPE_1__* dev; } ;
struct TYPE_2__ {struct cx88_core* core; } ;


 int EINVAL ;
 int V4L2_TUNER_RADIO ;
 int call_all (struct cx88_core*,int ,int ,struct v4l2_tuner*) ;
 int g_tuner ;
 int strcpy (int ,char*) ;
 int tuner ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int radio_g_tuner (struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct cx88_core *core = ((struct cx8800_fh *)priv)->dev->core;

 if (unlikely(t->index > 0))
  return -EINVAL;

 strcpy(t->name, "Radio");
 t->type = V4L2_TUNER_RADIO;

 call_all(core, tuner, g_tuner, t);
 return 0;
}
