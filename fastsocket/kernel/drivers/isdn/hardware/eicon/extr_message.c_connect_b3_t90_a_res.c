
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t word ;
typedef int dword ;
typedef int byte ;
struct TYPE_6__ {int* info; int length; } ;
struct TYPE_5__ {scalar_t__* ncci_state; } ;
typedef int PLCI ;
typedef TYPE_1__ DIVA_CAPI_ADAPTER ;
typedef int APPL ;
typedef TYPE_2__ API_PARSE ;


 void* CONNECTED ;
 scalar_t__ INC_ACT_PENDING ;
 scalar_t__ INC_CON_PENDING ;
 int N_CONNECT_ACK ;
 int N_D_BIT ;
 int add_d (int *,size_t,int*) ;
 int dbug (int,int ) ;
 int dprintf (char*) ;
 int nl_req_ncci (int *,int,int) ;

__attribute__((used)) static byte connect_b3_t90_a_res(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
     PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word ncci;
  API_PARSE * ncpi;
  byte req;

  dbug(1,dprintf("connect_b3_t90_a_res"));

  ncci = (word)(Id>>16);
  if(plci && ncci) {
    if(a->ncci_state[ncci]==INC_ACT_PENDING) {
      a->ncci_state[ncci] = CONNECTED;
    }
    else if(a->ncci_state[ncci]==INC_CON_PENDING) {
      a->ncci_state[ncci] = CONNECTED;

      req = N_CONNECT_ACK;


      if(parms[0].info) {
        ncpi = &parms[1];
        if(ncpi->length>2) {
          if(ncpi->info[1] &1) req = N_CONNECT_ACK | N_D_BIT;
          add_d(plci,(word)(ncpi->length-3),&ncpi->info[4]);
        }
      }
      nl_req_ncci(plci,req,(byte)ncci);
      return 1;
    }
  }
  return 0;
}
