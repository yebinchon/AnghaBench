
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sndcard; } ;
struct em28xx {int has_alsa_audio; TYPE_1__ adev; } ;


 int snd_card_free (int *) ;

__attribute__((used)) static int em28xx_audio_fini(struct em28xx *dev)
{
 if (dev == ((void*)0))
  return 0;

 if (dev->has_alsa_audio != 1) {



  return 0;
 }

 if (dev->adev.sndcard) {
  snd_card_free(dev->adev.sndcard);
  dev->adev.sndcard = ((void*)0);
 }

 return 0;
}
