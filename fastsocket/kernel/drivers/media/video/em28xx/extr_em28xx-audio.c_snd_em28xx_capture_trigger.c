
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct em28xx {int wq_trigger; int stream_started; } ;


 int EINVAL ;


 int atomic_set (int *,int) ;
 int schedule_work (int *) ;
 struct em28xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_em28xx_capture_trigger(struct snd_pcm_substream *substream,
          int cmd)
{
 struct em28xx *dev = snd_pcm_substream_chip(substream);
 int retval;

 switch (cmd) {
 case 129:
  atomic_set(&dev->stream_started, 1);
  break;
 case 128:
  atomic_set(&dev->stream_started, 1);
  break;
 default:
  retval = -EINVAL;
 }
 schedule_work(&dev->wq_trigger);
 return 0;
}
