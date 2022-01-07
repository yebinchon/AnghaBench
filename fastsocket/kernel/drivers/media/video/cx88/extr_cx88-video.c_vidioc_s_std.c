
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct cx88_core {int lock; } ;
struct cx8800_fh {TYPE_1__* dev; } ;
struct TYPE_2__ {struct cx88_core* core; } ;


 int cx88_set_tvnorm (struct cx88_core*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_s_std (struct file *file, void *priv, v4l2_std_id *tvnorms)
{
 struct cx88_core *core = ((struct cx8800_fh *)priv)->dev->core;

 mutex_lock(&core->lock);
 cx88_set_tvnorm(core,*tvnorms);
 mutex_unlock(&core->lock);

 return 0;
}
