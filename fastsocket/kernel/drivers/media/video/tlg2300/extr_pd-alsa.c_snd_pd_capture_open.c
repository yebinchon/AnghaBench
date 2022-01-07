
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; struct poseidon* private_data; } ;
struct poseidon_audio {struct snd_pcm_substream* capture_pcm_substream; scalar_t__ card_close; int users; } ;
struct poseidon {int kref; int interface; struct poseidon_audio audio; } ;


 int ENODEV ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int kref_get (int *) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 struct poseidon* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_pd_hw_capture ;
 int usb_autopm_get_interface (int ) ;

__attribute__((used)) static int snd_pd_capture_open(struct snd_pcm_substream *substream)
{
 struct poseidon *p = snd_pcm_substream_chip(substream);
 struct poseidon_audio *pa = &p->audio;
 struct snd_pcm_runtime *runtime = substream->runtime;

 if (!p)
  return -ENODEV;
 pa->users++;
 pa->card_close = 0;
 pa->capture_pcm_substream = substream;
 runtime->private_data = p;

 runtime->hw = snd_pd_hw_capture;
 snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
 usb_autopm_get_interface(p->interface);
 kref_get(&p->kref);
 return 0;
}
