
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char last; scalar_t__ idx; } ;
typedef TYPE_1__ dtmf_state ;


 int GFP_ATOMIC ;
 TYPE_1__* kmalloc (int,int ) ;

dtmf_state *
isdn_audio_dtmf_init(dtmf_state * s)
{
 if (!s)
  s = kmalloc(sizeof(dtmf_state), GFP_ATOMIC);
 if (s) {
  s->idx = 0;
  s->last = ' ';
 }
 return s;
}
