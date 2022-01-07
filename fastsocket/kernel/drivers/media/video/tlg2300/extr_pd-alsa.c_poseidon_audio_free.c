
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poseidon_audio {scalar_t__ card; } ;
struct poseidon {struct poseidon_audio audio; } ;


 int snd_card_free (scalar_t__) ;

int poseidon_audio_free(struct poseidon *p)
{
 struct poseidon_audio *pa = &p->audio;

 if (pa->card)
  snd_card_free(pa->card);
 return 0;
}
