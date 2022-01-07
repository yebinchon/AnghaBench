
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nleft; size_t nbits; int word; } ;
typedef TYPE_1__ adpcm_state ;


 int* bitmask ;

__attribute__((used)) static int
isdn_audio_get_bits(adpcm_state * s, unsigned char **in, int *len)
{
 while (s->nleft < s->nbits) {
  int d = *((*in)++);
  (*len)--;
  s->word = (s->word << 8) | d;
  s->nleft += 8;
 }
 s->nleft -= s->nbits;
 return (s->word >> s->nleft) & bitmask[s->nbits];
}
