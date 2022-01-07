
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_cx18_card {int slock; int hwptr_done_capture; } ;
typedef int snd_pcm_uframes_t ;


 struct snd_cx18_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static
snd_pcm_uframes_t snd_cx18_pcm_pointer(struct snd_pcm_substream *substream)
{
 unsigned long flags;
 snd_pcm_uframes_t hwptr_done;
 struct snd_cx18_card *cxsc = snd_pcm_substream_chip(substream);

 spin_lock_irqsave(&cxsc->slock, flags);
 hwptr_done = cxsc->hwptr_done_capture;
 spin_unlock_irqrestore(&cxsc->slock, flags);

 return hwptr_done;
}
