
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t byte ;
struct TYPE_5__ {int* ch_flow_control; } ;
struct TYPE_4__ {TYPE_2__* adapter; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;


 int N_CH_XOFF ;
 int N_XON_CONNECT_IND ;
 int N_XON_REQ ;

__attribute__((used)) static void channel_request_xon (PLCI * plci, byte ch) {
  DIVA_CAPI_ADAPTER * a = plci->adapter;

  if (a->ch_flow_control[ch] & N_CH_XOFF) {
    a->ch_flow_control[ch] |= N_XON_REQ;
    a->ch_flow_control[ch] &= ~N_CH_XOFF;
    a->ch_flow_control[ch] &= ~N_XON_CONNECT_IND;
  }
}
