
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct TYPE_2__ {scalar_t__ tuner_type; } ;
struct cx88_core {int lock; int freq; TYPE_1__ board; } ;


 int EINVAL ;
 scalar_t__ UNSET ;
 int call_all (struct cx88_core*,int ,int ,struct v4l2_frequency*) ;
 int cx88_newstation (struct cx88_core*) ;
 int cx88_set_tvaudio (struct cx88_core*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_frequency ;
 int tuner ;
 scalar_t__ unlikely (int) ;

int cx88_set_freq (struct cx88_core *core,
    struct v4l2_frequency *f)
{
 if (unlikely(UNSET == core->board.tuner_type))
  return -EINVAL;
 if (unlikely(f->tuner != 0))
  return -EINVAL;

 mutex_lock(&core->lock);
 core->freq = f->frequency;
 cx88_newstation(core);
 call_all(core, tuner, s_frequency, f);


 msleep (10);
 cx88_set_tvaudio(core);

 mutex_unlock(&core->lock);

 return 0;
}
