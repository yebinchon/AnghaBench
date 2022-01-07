
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct cx8800_fh {TYPE_1__* dev; } ;
struct TYPE_2__ {struct cx88_core* core; } ;


 int EINVAL ;
 int call_all (struct cx88_core*,int ,int ,struct v4l2_tuner*) ;
 int s_tuner ;
 int tuner ;

__attribute__((used)) static int radio_s_tuner (struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct cx88_core *core = ((struct cx8800_fh *)priv)->dev->core;

 if (0 != t->index)
  return -EINVAL;

 call_all(core, tuner, s_tuner, t);

 return 0;
}
