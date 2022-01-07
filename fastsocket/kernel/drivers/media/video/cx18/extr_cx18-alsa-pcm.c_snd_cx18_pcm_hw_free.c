
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_cx18_card {int slock; } ;
struct TYPE_2__ {int * dma_area; } ;


 int dprintk (char*) ;
 struct snd_cx18_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vfree (int *) ;

__attribute__((used)) static int snd_cx18_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_cx18_card *cxsc = snd_pcm_substream_chip(substream);
 unsigned long flags;

 spin_lock_irqsave(&cxsc->slock, flags);
 if (substream->runtime->dma_area) {
  dprintk("freeing pcm capture region\n");
  vfree(substream->runtime->dma_area);
  substream->runtime->dma_area = ((void*)0);
 }
 spin_unlock_irqrestore(&cxsc->slock, flags);

 return 0;
}
