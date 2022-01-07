
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ulaw; } ;
typedef TYPE_1__ t_capidtmf_state ;
typedef int byte ;


 int capidtmf_recv_init (TYPE_1__*) ;

void capidtmf_init (t_capidtmf_state *p_state, byte ulaw)
{
  p_state->ulaw = ulaw;
  capidtmf_recv_init (p_state);
}
