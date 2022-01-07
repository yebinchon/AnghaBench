
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {scalar_t__ users; int shutdown; } ;
struct cx231xx {int mute; int wq_trigger; int stream_started; TYPE_1__ adev; int lock; } ;


 int Audio ;
 int INDEX_AUDIO ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cx231xx_capture_start (struct cx231xx*,int ,int ) ;
 int cx231xx_errdev (char*) ;
 int cx231xx_set_alt_setting (struct cx231xx*,int ,int ) ;
 int dprintk (char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 struct cx231xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cx231xx_pcm_close(struct snd_pcm_substream *substream)
{
 int ret;
 struct cx231xx *dev = snd_pcm_substream_chip(substream);

 dprintk("closing device\n");


 mutex_lock(&dev->lock);
 ret = cx231xx_capture_start(dev, 0, Audio);



 ret = cx231xx_set_alt_setting(dev, INDEX_AUDIO, 0);
 if (ret < 0) {
  cx231xx_errdev("failed to set alternate setting !\n");

  mutex_unlock(&dev->lock);
  return ret;
 }

 dev->mute = 1;
 dev->adev.users--;
 mutex_unlock(&dev->lock);

 if (dev->adev.users == 0 && dev->adev.shutdown == 1) {
  dprintk("audio users: %d\n", dev->adev.users);
  dprintk("disabling audio stream!\n");
  dev->adev.shutdown = 0;
  dprintk("released lock\n");
  if (atomic_read(&dev->stream_started) > 0) {
   atomic_set(&dev->stream_started, 0);
   schedule_work(&dev->wq_trigger);
  }
 }
 return 0;
}
