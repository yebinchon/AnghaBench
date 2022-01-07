
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t word ;
typedef int dword ;
typedef int byte ;
struct TYPE_7__ {int * ncci_state; } ;
struct TYPE_6__ {int B3_prot; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;
typedef int APPL ;
typedef int API_PARSE ;




 int CONNECTED ;
 int INC_RES_PENDING ;
 int N_RESET_ACK ;
 int dbug (int,int ) ;
 int dprintf (char*) ;
 int nl_req_ncci (TYPE_1__*,int ,int) ;

__attribute__((used)) static byte reset_b3_res(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
    PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word ncci;

  dbug(1,dprintf("reset_b3_res"));

  ncci = (word)(Id>>16);
  if(plci && ncci) {
    switch (plci->B3_prot)
    {
    case 129:
    case 128:
      if(a->ncci_state[ncci]==INC_RES_PENDING)
      {
        a->ncci_state[ncci] = CONNECTED;
        nl_req_ncci(plci,N_RESET_ACK,(byte)ncci);
        return 1;
      }
    break;
    }
  }
  return 0;
}
