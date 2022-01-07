
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t word ;
typedef int dword ;
typedef int byte ;
struct TYPE_9__ {int * ncci_state; } ;
struct TYPE_8__ {int B3_prot; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;
typedef int APPL ;
typedef int API_PARSE ;





 int CONFIRM ;
 int CONNECTED ;
 size_t GOOD ;
 int N_RESET ;
 int _RESET_B3_R ;
 size_t _WRONG_IDENTIFIER ;
 size_t _WRONG_STATE ;
 int dbug (int,int ) ;
 int dprintf (char*) ;
 int nl_req_ncci (TYPE_1__*,int ,int) ;
 int reset_b3_command ;
 int send_req (TYPE_1__*) ;
 int sendf (int *,int,int,size_t,char*,size_t) ;
 int start_internal_command (int,TYPE_1__*,int ) ;

__attribute__((used)) static byte reset_b3_req(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
    PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word Info;
  word ncci;

  dbug(1,dprintf("reset_b3_req"));

  Info = _WRONG_IDENTIFIER;
  ncci = (word)(Id>>16);
  if(plci && ncci)
  {
    Info = _WRONG_STATE;
    switch (plci->B3_prot)
    {
    case 130:
    case 128:
      if(a->ncci_state[ncci]==CONNECTED)
      {
        nl_req_ncci(plci,N_RESET,(byte)ncci);
        send_req(plci);
        Info = GOOD;
      }
      break;
    case 129:
      if(a->ncci_state[ncci]==CONNECTED)
      {
        start_internal_command (Id, plci, reset_b3_command);
        Info = GOOD;
      }
      break;
    }
  }

  sendf(appl,
        _RESET_B3_R|CONFIRM,
        Id,
        Number,
        "w",Info);
  return 0;
}
