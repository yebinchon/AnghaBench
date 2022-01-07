
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int audmode; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ tuner_type; } ;
struct cx88_core {TYPE_2__ board; } ;
struct cx8802_fh {TYPE_1__* dev; } ;
struct TYPE_3__ {struct cx88_core* core; } ;


 int EINVAL ;
 scalar_t__ UNSET ;
 int cx88_set_stereo (struct cx88_core*,int ,int) ;

__attribute__((used)) static int vidioc_s_tuner (struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct cx88_core *core = ((struct cx8802_fh *)priv)->dev->core;

 if (UNSET == core->board.tuner_type)
  return -EINVAL;
 if (0 != t->index)
  return -EINVAL;

 cx88_set_stereo(core, t->audmode, 1);
 return 0;
}
