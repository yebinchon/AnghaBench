
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int word ;
struct TYPE_5__ {scalar_t__* ch_flow_plci; scalar_t__* ch_flow_control; } ;
struct TYPE_4__ {scalar_t__ Id; TYPE_2__* adapter; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;


 int MAX_NL_CHANNEL ;

__attribute__((used)) static void channel_flow_control_remove (PLCI * plci) {
  DIVA_CAPI_ADAPTER * a = plci->adapter;
  word i;
  for(i=1;i<MAX_NL_CHANNEL+1;i++) {
    if (a->ch_flow_plci[i] == plci->Id) {
      a->ch_flow_plci[i] = 0;
      a->ch_flow_control[i] = 0;
    }
  }
}
