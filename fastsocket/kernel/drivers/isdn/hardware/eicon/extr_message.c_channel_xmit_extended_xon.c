
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int byte ;
struct TYPE_7__ {int* ch_flow_control; scalar_t__* ch_flow_plci; } ;
struct TYPE_6__ {scalar_t__ Id; TYPE_2__* adapter; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;


 int ARRAY_SIZE (int*) ;
 int N_CH_XOFF ;
 int N_XON_CONNECT_IND ;
 int channel_request_xon (TYPE_1__*,int ) ;
 int channel_xmit_xon (TYPE_1__*) ;

__attribute__((used)) static void channel_xmit_extended_xon (PLCI * plci) {
  DIVA_CAPI_ADAPTER * a;
  int max_ch = ARRAY_SIZE(a->ch_flow_control);
  int i, one_requested = 0;

  if ((!plci) || (!plci->Id) || ((a = plci->adapter) == ((void*)0))) {
    return;
  }

  for (i = 0; i < max_ch; i++) {
    if ((a->ch_flow_control[i] & N_CH_XOFF) &&
        (a->ch_flow_control[i] & N_XON_CONNECT_IND) &&
        (plci->Id == a->ch_flow_plci[i])) {
      channel_request_xon (plci, (byte)i);
      one_requested = 1;
    }
  }

  if (one_requested) {
    channel_xmit_xon (plci);
  }
}
