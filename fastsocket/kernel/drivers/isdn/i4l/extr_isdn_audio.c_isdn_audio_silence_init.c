
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; scalar_t__ idx; } ;
typedef TYPE_1__ silence_state ;


 int GFP_ATOMIC ;
 TYPE_1__* kmalloc (int,int ) ;

silence_state *
isdn_audio_silence_init(silence_state * s)
{
 if (!s)
  s = kmalloc(sizeof(silence_state), GFP_ATOMIC);
 if (s) {
  s->idx = 0;
  s->state = 0;
 }
 return s;
}
