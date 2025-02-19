
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t word ;
typedef int dword ;
typedef int byte ;
struct TYPE_18__ {int Id; } ;
struct TYPE_16__ {scalar_t__ Id; } ;
struct TYPE_15__ {int Id; } ;
struct TYPE_17__ {scalar_t__ State; int nl_remove_id; TYPE_2__ NL; TYPE_1__ Sig; TYPE_4__* appl; } ;
typedef TYPE_3__ PLCI ;
typedef int DIVA_CAPI_ADAPTER ;
typedef TYPE_4__ APPL ;
typedef int API_PARSE ;


 int CONFIRM ;
 int HANGUP ;
 scalar_t__ INC_CON_ALERT ;
 scalar_t__ INC_CON_PENDING ;
 scalar_t__ INC_DIS_PENDING ;
 void* OUTG_DIS_PENDING ;
 int REMOVE ;
 int _DISCONNECT_I ;
 int _DISCONNECT_R ;
 size_t _WRONG_IDENTIFIER ;
 int add_ai (TYPE_3__*,int *) ;
 TYPE_4__* application ;
 int clear_c_ind_mask_bit (TYPE_3__*,size_t) ;
 int dbug (int,int ) ;
 int dprintf (char*) ;
 size_t max_appl ;
 int mixer_remove (TYPE_3__*) ;
 int nl_req_ncci (TYPE_3__*,int ,int ) ;
 int sendf (TYPE_4__*,int,int ,size_t,char*,size_t) ;
 int sig_req (TYPE_3__*,int ,int ) ;
 scalar_t__ test_c_ind_mask_bit (TYPE_3__*,size_t) ;

__attribute__((used)) static byte disconnect_req(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
      PLCI *plci, APPL *appl, API_PARSE *msg)
{
  word Info;
  word i;

  dbug(1,dprintf("disconnect_req"));

  Info = _WRONG_IDENTIFIER;

  if(plci)
  {
    if(plci->State==INC_CON_PENDING || plci->State==INC_CON_ALERT)
    {
      clear_c_ind_mask_bit (plci, (word)(appl->Id-1));
      plci->appl = appl;
      for(i=0; i<max_appl; i++)
      {
        if(test_c_ind_mask_bit (plci, i))
          sendf(&application[i], _DISCONNECT_I, Id, 0, "w", 0);
      }
      plci->State = OUTG_DIS_PENDING;
    }
    if(plci->Sig.Id && plci->appl)
    {
      Info = 0;
        if(plci->Sig.Id!=0xff)
        {
          if(plci->State!=INC_DIS_PENDING)
          {
            add_ai(plci, &msg[0]);
            sig_req(plci,HANGUP,0);
            plci->State = OUTG_DIS_PENDING;
            return 1;
          }
        }
        else
        {
          if (plci->NL.Id && !plci->nl_remove_id)
          {
            mixer_remove (plci);
            nl_req_ncci(plci,REMOVE,0);
          sendf(appl,_DISCONNECT_R|CONFIRM,Id,Number,"w",0);
          sendf(appl, _DISCONNECT_I, Id, 0, "w", 0);
          plci->State = INC_DIS_PENDING;
          }
          return 1;
        }
      }
    }

  if(!appl) return 0;
  sendf(appl, _DISCONNECT_R|CONFIRM, Id, Number, "w",Info);
  return 0;
}
