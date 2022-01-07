
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int d; int nbits; scalar_t__ nleft; scalar_t__ word; scalar_t__ a; } ;
typedef TYPE_1__ adpcm_state ;


 int GFP_ATOMIC ;
 TYPE_1__* kmalloc (int,int ) ;

adpcm_state *
isdn_audio_adpcm_init(adpcm_state * s, int nbits)
{
 if (!s)
  s = kmalloc(sizeof(adpcm_state), GFP_ATOMIC);
 if (s) {
  s->a = 0;
  s->d = 5;
  s->word = 0;
  s->nleft = 0;
  s->nbits = nbits;
 }
 return s;
}
