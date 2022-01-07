
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
struct TYPE_5__ {size_t ncci_ring_list; TYPE_1__* adapter; scalar_t__ nl_req; } ;
struct TYPE_4__ {size_t* ncci_ch; int* ch_flow_control; } ;
typedef TYPE_2__ PLCI ;


 int N_OK_FC_PENDING ;

__attribute__((used)) static byte plci_nl_busy (PLCI *plci)
{

  return (plci->nl_req
    || (plci->ncci_ring_list
     && plci->adapter->ncci_ch[plci->ncci_ring_list]
     && (plci->adapter->ch_flow_control[plci->adapter->ncci_ch[plci->ncci_ring_list]] & N_OK_FC_PENDING)));
}
