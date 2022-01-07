
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_5__ {int reg_lock; } ;
typedef TYPE_1__ snd_cx88_card_t ;


 int EINVAL ;


 int _cx88_start_audio_dma (TYPE_1__*) ;
 int _cx88_stop_audio_dma (TYPE_1__*) ;
 TYPE_1__* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_cx88_card_trigger(struct snd_pcm_substream *substream, int cmd)
{
 snd_cx88_card_t *chip = snd_pcm_substream_chip(substream);
 int err;


 spin_lock(&chip->reg_lock);

 switch (cmd) {
 case 129:
  err=_cx88_start_audio_dma(chip);
  break;
 case 128:
  err=_cx88_stop_audio_dma(chip);
  break;
 default:
  err=-EINVAL;
  break;
 }

 spin_unlock(&chip->reg_lock);

 return err;
}
