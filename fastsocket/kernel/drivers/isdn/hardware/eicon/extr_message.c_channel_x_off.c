
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t byte ;
struct TYPE_5__ {int* ch_flow_control; int ch_flow_control_pending; int * ch_flow_plci; } ;
struct TYPE_4__ {int Id; TYPE_2__* adapter; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;


 size_t N_CH_XOFF ;
 int N_RX_FLOW_CONTROL_MASK ;

__attribute__((used)) static void channel_x_off (PLCI * plci, byte ch, byte flag) {
  DIVA_CAPI_ADAPTER * a = plci->adapter;
  if ((a->ch_flow_control[ch] & N_RX_FLOW_CONTROL_MASK) == 0) {
    a->ch_flow_control[ch] |= (N_CH_XOFF | flag);
    a->ch_flow_plci[ch] = plci->Id;
    a->ch_flow_control_pending++;
  }
}
