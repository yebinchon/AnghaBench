
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct cx88_core {int lock; } ;
struct cx8800_fh {TYPE_1__* dev; } ;
struct TYPE_2__ {struct cx88_core* core; } ;


 int EINVAL ;
 int cx88_newstation (struct cx88_core*) ;
 int cx88_video_mux (struct cx88_core*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_s_input (struct file *file, void *priv, unsigned int i)
{
 struct cx88_core *core = ((struct cx8800_fh *)priv)->dev->core;

 if (i >= 4)
  return -EINVAL;

 mutex_lock(&core->lock);
 cx88_newstation(core);
 cx88_video_mux(core,i);
 mutex_unlock(&core->lock);
 return 0;
}
