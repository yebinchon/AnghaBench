
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int periods; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_3__ {int count; } ;
typedef TYPE_1__ snd_cx88_card_t ;


 int atomic_read (int *) ;
 TYPE_1__* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_cx88_pointer(struct snd_pcm_substream *substream)
{
 snd_cx88_card_t *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 u16 count;

 count = atomic_read(&chip->count);




 return runtime->period_size * (count & (runtime->periods-1));
}
