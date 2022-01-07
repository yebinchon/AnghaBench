
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct poseidon_audio {int card_close; int users; } ;
struct poseidon {int kref; int interface; struct poseidon_audio audio; } ;


 int kref_put (int *,int ) ;
 int poseidon_delete ;
 struct poseidon* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int snd_pd_pcm_close(struct snd_pcm_substream *substream)
{
 struct poseidon *p = snd_pcm_substream_chip(substream);
 struct poseidon_audio *pa = &p->audio;

 pa->users--;
 pa->card_close = 1;
 usb_autopm_put_interface(p->interface);
 kref_put(&p->kref, poseidon_delete);
 return 0;
}
