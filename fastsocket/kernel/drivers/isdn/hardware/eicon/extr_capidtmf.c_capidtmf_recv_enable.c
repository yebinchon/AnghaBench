
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* word ;
struct TYPE_4__ {int min_digit_duration; int min_gap_duration; int state; int indication_state_ack; } ;
struct TYPE_5__ {TYPE_1__ recv; } ;
typedef TYPE_2__ t_capidtmf_state ;
typedef int dword ;


 int CAPIDTMF_RECV_INDICATION_DIGIT ;
 int CAPIDTMF_RECV_STATE_DTMF_ACTIVE ;
 int CAPIDTMF_RECV_TIME_GRANULARITY ;

void capidtmf_recv_enable (t_capidtmf_state *p_state, word min_digit_duration, word min_gap_duration)
{
  p_state->recv.indication_state_ack &= CAPIDTMF_RECV_INDICATION_DIGIT;
  p_state->recv.min_digit_duration = (word)(((((dword) min_digit_duration) * 8) +
    ((dword)(CAPIDTMF_RECV_TIME_GRANULARITY / 2))) / ((dword) CAPIDTMF_RECV_TIME_GRANULARITY));
  if (p_state->recv.min_digit_duration <= 1)
    p_state->recv.min_digit_duration = 1;
  else
    (p_state->recv.min_digit_duration)--;
  p_state->recv.min_gap_duration =
    (word)((((dword) min_gap_duration) * 8) / ((dword) CAPIDTMF_RECV_TIME_GRANULARITY));
  if (p_state->recv.min_gap_duration <= 1)
    p_state->recv.min_gap_duration = 1;
  else
    (p_state->recv.min_gap_duration)--;
  p_state->recv.state |= CAPIDTMF_RECV_STATE_DTMF_ACTIVE;
}
