#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int word ;
typedef  int dword ;
typedef  int byte ;
struct TYPE_27__ {scalar_t__ length; int /*<<< orphan*/ * info; } ;
struct TYPE_26__ {int Id; } ;
struct TYPE_25__ {TYPE_4__* AdvSignalAppl; scalar_t__ AdvSignalPLCI; } ;
struct TYPE_23__ {int /*<<< orphan*/  Id; } ;
struct TYPE_24__ {int tel; scalar_t__ SuppState; scalar_t__ State; scalar_t__ spoofed_msg; int call_dir; scalar_t__ adv_nl; scalar_t__ command; int /*<<< orphan*/  internal_command; int /*<<< orphan*/  saved_msg; TYPE_4__* appl; scalar_t__ nl_remove_id; scalar_t__ channels; TYPE_1__ NL; int /*<<< orphan*/  Id; } ;
typedef  TYPE_2__ PLCI ;
typedef  TYPE_3__ DIVA_CAPI_ADAPTER ;
typedef  TYPE_4__ APPL ;
typedef  TYPE_5__ API_PARSE ;

/* Variables and functions */
 scalar_t__ AWAITING_SELECT_B ; 
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BLOCK_PLCI ; 
 int CALL_DIR_ANSWER ; 
 int CALL_DIR_IN ; 
 int CALL_DIR_ORIGINATE ; 
 int CALL_DIR_OUT ; 
 int CONFIRM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
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
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,int /*<<< orphan*/ *) ; 
 TYPE_4__* application ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int max_appl ; 
 int /*<<< orphan*/  select_b_command ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int) ; 

__attribute__((used)) static byte FUNC11(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
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
    FUNC5(1,FUNC6("select_b_req[%d],PLCI=0x%x,Tel=0x%x,NL=0x%x,appl=0x%x,sstate=0x%x",
                   msg->length,plci->Id,plci->tel,plci->NL.Id,plci->appl,plci->SuppState));
    FUNC5(1,FUNC6("PlciState=0x%x",plci->State));
    for(i=0;i<7;i++) bp_parms[i].length = 0;

    /* check if no channel is open, no B3 connected only */
    if((plci->State == IDLE) || (plci->State == OUTG_DIS_PENDING) || (plci->State == INC_DIS_PENDING)
     || (plci->SuppState != IDLE) || plci->channels || plci->nl_remove_id)
    {
      Info = _WRONG_STATE;
    }
    /* check message format and fill bp_parms pointer */
    else if(msg->length && FUNC2(&msg->info[1], (word)msg->length, "wwwsss", bp_parms))
    {
      Info = _WRONG_MESSAGE_FORMAT;
    }
    else
    {
      if((plci->State==INC_CON_PENDING) || (plci->State==INC_CON_ALERT)) /* send alert tone inband to the network, */
      {                                                                  /* e.g. Qsig or RBS or Cornet-N or xess PRI */
        if(Id & EXT_CONTROLLER)
        {
          FUNC8(appl, _SELECT_B_REQ|CONFIRM, Id, Number, "w", 0x2002); /* wrong controller */
          return 0;
        }
        plci->State=INC_CON_CONNECTED_ALERT;
        plci->appl = appl;
        FUNC4 (plci, (word)(appl->Id-1));
        FUNC7 (plci);
        for(i=0; i<max_appl; i++) /* disconnect the other appls */
        {                         /* its quasi a connect        */
          if(FUNC10 (plci, i))
            FUNC8(&application[i], _DISCONNECT_I, Id, 0, "w", _OTHER_APPL_CONNECTED);
        }
      }

      FUNC3(msg, "s", &plci->saved_msg);
      tel = plci->tel;
      if(Id & EXT_CONTROLLER)
      {
        if(tel) /* external controller in use by this PLCI */
        {
          if(a->AdvSignalAppl && a->AdvSignalAppl!=appl)
          {
            FUNC5(1,FUNC6("Ext_Ctrl in use 1"));
            Info = _WRONG_STATE;
          }
        }
        else  /* external controller NOT in use by this PLCI ? */
        {
          if(a->AdvSignalPLCI)
          {
            FUNC5(1,FUNC6("Ext_Ctrl in use 2"));
            Info = _WRONG_STATE;
          }
          else /* activate the codec */
          {
            FUNC5(1,FUNC6("Ext_Ctrl start"));
            if(FUNC0(a, plci, appl, 0) )
            {
              FUNC5(1,FUNC6("Error in codec procedures"));
              Info = _WRONG_STATE;
            }
            else if(plci->spoofed_msg==SPOOFING_REQUIRED) /* wait until codec is active */
            {
              plci->spoofed_msg = AWAITING_SELECT_B;
              plci->internal_command = BLOCK_PLCI; /* lock other commands */
              plci->command = 0;
              FUNC5(1,FUNC6("continue if codec loaded"));
              return false;
            }
          }
        }
      }
      else /* external controller bit is OFF */
      {
        if(tel) /* external controller in use, need to switch off */
        {
          if(a->AdvSignalAppl==appl)
          {
            FUNC1(a, plci);
            plci->tel = 0;
            plci->adv_nl = 0;
            FUNC5(1,FUNC6("Ext_Ctrl disable"));
          }
          else
          {
            FUNC5(1,FUNC6("Ext_Ctrl not requested"));
          }
        }
      }
      if (!Info)
      {
        if (plci->call_dir & CALL_DIR_OUT)
          plci->call_dir = CALL_DIR_OUT | CALL_DIR_ORIGINATE;
        else if (plci->call_dir & CALL_DIR_IN)
          plci->call_dir = CALL_DIR_IN | CALL_DIR_ANSWER;
        FUNC9 (Id, plci, select_b_command);
        return false;
      }
    }
  }
  FUNC8(appl, _SELECT_B_REQ|CONFIRM, Id, Number, "w", Info);
  return false;
}