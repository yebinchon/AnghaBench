
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cx18_card {int * v4l2_dev; } ;
struct TYPE_2__ {int * alsa; } ;


 int kfree (struct snd_cx18_card*) ;
 TYPE_1__* to_cx18 (int *) ;

__attribute__((used)) static void snd_cx18_card_free(struct snd_cx18_card *cxsc)
{
 if (cxsc == ((void*)0))
  return;

 if (cxsc->v4l2_dev != ((void*)0))
  to_cx18(cxsc->v4l2_dev)->alsa = ((void*)0);



 kfree(cxsc);
}
