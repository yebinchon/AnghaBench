
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sndcard; int alt_max_pkt_size; } ;
struct cx231xx {int has_alsa_audio; TYPE_1__ adev; } ;


 int kfree (int ) ;
 int snd_card_free (int *) ;

__attribute__((used)) static int cx231xx_audio_fini(struct cx231xx *dev)
{
 if (dev == ((void*)0))
  return 0;

 if (dev->has_alsa_audio != 1) {



  return 0;
 }

 if (dev->adev.sndcard) {
  snd_card_free(dev->adev.sndcard);
  kfree(dev->adev.alt_max_pkt_size);
  dev->adev.sndcard = ((void*)0);
 }

 return 0;
}
