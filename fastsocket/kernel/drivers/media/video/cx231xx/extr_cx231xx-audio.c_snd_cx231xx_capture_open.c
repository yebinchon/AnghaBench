
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct cx231xx* private_data; int hw; } ;
struct TYPE_2__ {struct snd_pcm_substream* capture_pcm_substream; int users; } ;
struct cx231xx {TYPE_1__ adev; int lock; scalar_t__ USE_ISO; scalar_t__ mute; } ;


 int Audio ;
 int ENODEV ;
 int INDEX_AUDIO ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int cx231xx_capture_start (struct cx231xx*,int,int ) ;
 int cx231xx_errdev (char*) ;
 int cx231xx_set_alt_setting (struct cx231xx*,int ,int) ;
 int dprintk (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_cx231xx_hw_capture ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 struct cx231xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cx231xx_capture_open(struct snd_pcm_substream *substream)
{
 struct cx231xx *dev = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int ret = 0;

 dprintk("opening device and trying to acquire exclusive lock\n");

 if (!dev) {
  cx231xx_errdev("BUG: cx231xx can't find device struct."
          " Can't proceed with open\n");
  return -ENODEV;
 }


 dev->mute = 0;



 mutex_lock(&dev->lock);
 if (dev->USE_ISO)
  ret = cx231xx_set_alt_setting(dev, INDEX_AUDIO, 1);
 else
  ret = cx231xx_set_alt_setting(dev, INDEX_AUDIO, 0);
 mutex_unlock(&dev->lock);
 if (ret < 0) {
  cx231xx_errdev("failed to set alternate setting !\n");

  return ret;
 }

 runtime->hw = snd_cx231xx_hw_capture;

 mutex_lock(&dev->lock);

 ret = cx231xx_capture_start(dev, 1, Audio);

 dev->adev.users++;
 mutex_unlock(&dev->lock);

 snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
 dev->adev.capture_pcm_substream = substream;
 runtime->private_data = dev;

 return 0;
}
