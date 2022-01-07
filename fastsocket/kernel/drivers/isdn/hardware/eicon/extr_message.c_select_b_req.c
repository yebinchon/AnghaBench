
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int word ;
typedef int dword ;
typedef int byte ;
struct TYPE_27__ {scalar_t__ length; int * info; } ;
struct TYPE_26__ {int Id; } ;
struct TYPE_25__ {TYPE_4__* AdvSignalAppl; scalar_t__ AdvSignalPLCI; } ;
struct TYPE_23__ {int Id; } ;
struct TYPE_24__ {int tel; scalar_t__ SuppState; scalar_t__ State; scalar_t__ spoofed_msg; int call_dir; scalar_t__ adv_nl; scalar_t__ command; int internal_command; int saved_msg; TYPE_4__* appl; scalar_t__ nl_remove_id; scalar_t__ channels; TYPE_1__ NL; int Id; } ;
typedef TYPE_2__ PLCI ;
typedef TYPE_3__ DIVA_CAPI_ADAPTER ;
typedef TYPE_4__ APPL ;
typedef TYPE_5__ API_PARSE ;


 scalar_t__ AWAITING_SELECT_B ;
 scalar_t__ AdvCodecSupport (TYPE_3__*,TYPE_2__*,TYPE_4__*,int ) ;
 int BLOCK_PLCI ;
 int CALL_DIR_ANSWER ;
 int CALL_DIR_IN ;
 int CALL_DIR_ORIGINATE ;
 int CALL_DIR_OUT ;
 int CONFIRM ;
 int CodecIdCheck (TYPE_3__*,TYPE_2__*) ;
 int EXT_CONTROLLER ;
 scalar_t__ IDLE ;
 scalar_t__ INC_CON_ALERT ;
 scalar_t__ INC_CON_CONNECTED_ALERT ;
 scalar_t__ INC_CON_PENDING ;
 scalar_t__ INC_DIS_PENDING ;
 scalar_t__ OUTG_DIS_PENDING ;
 scalar_t__ SPOOFING_REQUIRED ;
 int _DISCONNECT_I ;
 int _OTHER_APPL_CONNECTED ;
 int _SELECT_B_REQ ;
 int _WRONG_IDENTIFIER ;
 int _WRONG_MESSAGE_FORMAT ;
 int _WRONG_STATE ;
 scalar_t__ api_parse (int *,int,char*,TYPE_5__*) ;
 int api_save_msg (TYPE_5__*,char*,int *) ;
 TYPE_4__* application ;
 int clear_c_ind_mask_bit (TYPE_2__*,int) ;
 int dbug (int,int ) ;
 int dprintf (char*,...) ;
 int dump_c_ind_mask (TYPE_2__*) ;
 int max_appl ;
 int select_b_command ;
 int sendf (TYPE_4__*,int,int,int,char*,int) ;
 int start_internal_command (int,TYPE_2__*,int ) ;
 scalar_t__ test_c_ind_mask_bit (TYPE_2__*,int) ;

__attribute__((used)) static byte select_b_req(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
    PLCI *plci, APPL *appl, API_PARSE *msg)
{
  word Info=0;
  word i;
  byte tel;
    API_PARSE bp_parms[7];

  if(!plci || !msg)
  {
    Info = _WRONG_IDENTIFIER;
  }
  else
  {
    dbug(1,dprintf("select_b_req[%d],PLCI=0x%x,Tel=0x%x,NL=0x%x,appl=0x%x,sstate=0x%x",
                   msg->length,plci->Id,plci->tel,plci->NL.Id,plci->appl,plci->SuppState));
    dbug(1,dprintf("PlciState=0x%x",plci->State));
    for(i=0;i<7;i++) bp_parms[i].length = 0;


    if((plci->State == IDLE) || (plci->State == OUTG_DIS_PENDING) || (plci->State == INC_DIS_PENDING)
     || (plci->SuppState != IDLE) || plci->channels || plci->nl_remove_id)
    {
      Info = _WRONG_STATE;
    }

    else if(msg->length && api_parse(&msg->info[1], (word)msg->length, "wwwsss", bp_parms))
    {
      Info = _WRONG_MESSAGE_FORMAT;
    }
    else
    {
      if((plci->State==INC_CON_PENDING) || (plci->State==INC_CON_ALERT))
      {
        if(Id & EXT_CONTROLLER)
        {
          sendf(appl, _SELECT_B_REQ|CONFIRM, Id, Number, "w", 0x2002);
          return 0;
        }
        plci->State=INC_CON_CONNECTED_ALERT;
        plci->appl = appl;
        clear_c_ind_mask_bit (plci, (word)(appl->Id-1));
        dump_c_ind_mask (plci);
        for(i=0; i<max_appl; i++)
        {
          if(test_c_ind_mask_bit (plci, i))
            sendf(&application[i], _DISCONNECT_I, Id, 0, "w", _OTHER_APPL_CONNECTED);
        }
      }

      api_save_msg(msg, "s", &plci->saved_msg);
      tel = plci->tel;
      if(Id & EXT_CONTROLLER)
      {
        if(tel)
        {
          if(a->AdvSignalAppl && a->AdvSignalAppl!=appl)
          {
            dbug(1,dprintf("Ext_Ctrl in use 1"));
            Info = _WRONG_STATE;
          }
        }
        else
        {
          if(a->AdvSignalPLCI)
          {
            dbug(1,dprintf("Ext_Ctrl in use 2"));
            Info = _WRONG_STATE;
          }
          else
          {
            dbug(1,dprintf("Ext_Ctrl start"));
            if(AdvCodecSupport(a, plci, appl, 0) )
            {
              dbug(1,dprintf("Error in codec procedures"));
              Info = _WRONG_STATE;
            }
            else if(plci->spoofed_msg==SPOOFING_REQUIRED)
            {
              plci->spoofed_msg = AWAITING_SELECT_B;
              plci->internal_command = BLOCK_PLCI;
              plci->command = 0;
              dbug(1,dprintf("continue if codec loaded"));
              return 0;
            }
          }
        }
      }
      else
      {
        if(tel)
        {
          if(a->AdvSignalAppl==appl)
          {
            CodecIdCheck(a, plci);
            plci->tel = 0;
            plci->adv_nl = 0;
            dbug(1,dprintf("Ext_Ctrl disable"));
          }
          else
          {
            dbug(1,dprintf("Ext_Ctrl not requested"));
          }
        }
      }
      if (!Info)
      {
        if (plci->call_dir & CALL_DIR_OUT)
          plci->call_dir = CALL_DIR_OUT | CALL_DIR_ORIGINATE;
        else if (plci->call_dir & CALL_DIR_IN)
          plci->call_dir = CALL_DIR_IN | CALL_DIR_ANSWER;
        start_internal_command (Id, plci, select_b_command);
        return 0;
      }
    }
  }
  sendf(appl, _SELECT_B_REQ|CONFIRM, Id, Number, "w", Info);
  return 0;
}
