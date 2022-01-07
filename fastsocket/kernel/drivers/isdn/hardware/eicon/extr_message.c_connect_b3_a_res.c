
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t word ;
typedef int dword ;
typedef int byte ;
struct TYPE_8__ {scalar_t__* ncci_state; int * ncci_ch; } ;
struct TYPE_7__ {scalar_t__ State; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;
typedef int APPL ;
typedef int API_PARSE ;


 void* CONNECTED ;
 scalar_t__ IDLE ;
 scalar_t__ INC_ACT_PENDING ;
 scalar_t__ INC_CON_CONNECTED_ALERT ;
 scalar_t__ INC_DIS_PENDING ;
 scalar_t__ OUTG_DIS_PENDING ;
 int channel_request_xon (TYPE_1__*,int ) ;
 int channel_xmit_xon (TYPE_1__*) ;
 int dbug (int,int ) ;
 int dprintf (char*,size_t) ;

__attribute__((used)) static byte connect_b3_a_res(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
        PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word ncci;

  ncci = (word)(Id>>16);
  dbug(1,dprintf("connect_b3_a_res(ncci=0x%x)",ncci));

  if (plci && ncci && (plci->State != IDLE) && (plci->State != INC_DIS_PENDING)
   && (plci->State != OUTG_DIS_PENDING))
  {
    if(a->ncci_state[ncci]==INC_ACT_PENDING) {
      a->ncci_state[ncci] = CONNECTED;
      if(plci->State!=INC_CON_CONNECTED_ALERT) plci->State = CONNECTED;
      channel_request_xon (plci, a->ncci_ch[ncci]);
      channel_xmit_xon (plci);
    }
  }
  return 0;
}
