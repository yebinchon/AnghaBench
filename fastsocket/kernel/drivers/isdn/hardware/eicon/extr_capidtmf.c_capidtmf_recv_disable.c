
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int current_digit_value; scalar_t__ current_digit_off_time; scalar_t__ current_digit_on_time; scalar_t__ cycle_counter; } ;
struct TYPE_6__ {TYPE_1__ recv; } ;
typedef TYPE_2__ t_capidtmf_state ;


 int CAPIDTMF_RECV_NO_DIGIT ;
 scalar_t__ CAPIDTMF_RECV_STATE_DTMF_ACTIVE ;
 scalar_t__ CAPIDTMF_RECV_STATE_IDLE ;
 int capidtmf_recv_init (TYPE_2__*) ;

void capidtmf_recv_disable (t_capidtmf_state *p_state)
{
  p_state->recv.state &= ~CAPIDTMF_RECV_STATE_DTMF_ACTIVE;
  if (p_state->recv.state == CAPIDTMF_RECV_STATE_IDLE)
    capidtmf_recv_init (p_state);
  else
  {
    p_state->recv.cycle_counter = 0;
    p_state->recv.current_digit_on_time = 0;
    p_state->recv.current_digit_off_time = 0;
    p_state->recv.current_digit_value = CAPIDTMF_RECV_NO_DIGIT;
  }
}
