
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int slock; } ;
struct cx231xx {int wq_trigger; TYPE_1__ adev; int stream_started; } ;


 int EINVAL ;


 int atomic_set (int *,int) ;
 int schedule_work (int *) ;
 struct cx231xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_cx231xx_capture_trigger(struct snd_pcm_substream *substream,
           int cmd)
{
 struct cx231xx *dev = snd_pcm_substream_chip(substream);
 int retval;

 spin_lock(&dev->adev.slock);
 switch (cmd) {
 case 129:
  atomic_set(&dev->stream_started, 1);
  break;
 case 128:
  atomic_set(&dev->stream_started, 0);
  break;
 default:
  retval = -EINVAL;
 }
 spin_unlock(&dev->adev.slock);

 schedule_work(&dev->wq_trigger);

 return 0;
}
