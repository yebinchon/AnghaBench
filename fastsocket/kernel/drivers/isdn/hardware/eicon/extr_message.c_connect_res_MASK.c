#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
typedef  int word ;
typedef  int dword ;
typedef  int byte ;
struct TYPE_34__ {int /*<<< orphan*/ * info; scalar_t__ length; } ;
struct TYPE_33__ {int Id; } ;
struct TYPE_32__ {int* Info_Mask; scalar_t__ AdvCodecPLCI; } ;
struct TYPE_31__ {scalar_t__ State; scalar_t__ tel; scalar_t__ spoofed_msg; int /*<<< orphan*/  B1_facilities; scalar_t__ command; int /*<<< orphan*/  internal_command; int /*<<< orphan*/  saved_msg; scalar_t__ adv_nl; TYPE_3__* appl; } ;
typedef  TYPE_1__ PLCI ;
typedef  TYPE_2__ DIVA_CAPI_ADAPTER ;
typedef  TYPE_3__ APPL ;
typedef  TYPE_4__ API_PARSE ;

/* Variables and functions */
 scalar_t__ ADV_VOICE ; 
 int /*<<< orphan*/  ASSIGN ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BLOCK_PLCI ; 
 scalar_t__ CALL_RES ; 
 int /*<<< orphan*/  CONN_NR ; 
 int /*<<< orphan*/  ESC ; 
 int EXT_CONTROLLER ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ HANGUP ; 
 void* INC_CON_ACCEPT ; 
 scalar_t__ INC_CON_ALERT ; 
 scalar_t__ INC_CON_CONNECTED_ALERT ; 
 scalar_t__ INC_CON_PENDING ; 
 int /*<<< orphan*/  LLC ; 
 int /*<<< orphan*/  LLI ; 
 scalar_t__ REJECT ; 
 scalar_t__ SPOOFING_REQUIRED ; 
 int /*<<< orphan*/  _DISCONNECT_I ; 
 int /*<<< orphan*/  _OTHER_APPL_CONNECTED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,int /*<<< orphan*/ *) ; 
 TYPE_3__* application ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int max_appl ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_1__*,int) ; 

__attribute__((used)) static byte FUNC18(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
			PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word i, Info;
  word Reject;
  static byte cau_t[] = {0,0,0x90,0x91,0xac,0x9d,0x86,0xd8,0x9b};
  static byte esc_t[] = {0x03,0x08,0x00,0x00};
  API_PARSE * ai;
    API_PARSE ai_parms[5];
  word ch=0;

  if(!plci) {
    FUNC11(1,FUNC12("connect_res(no plci)"));
    return 0;  /* no plci, no send */
  }

  FUNC11(1,FUNC12("connect_res(State=0x%x)",plci->State));
  for(i=0;i<5;i++) ai_parms[i].length = 0;
  ai = &parms[5];
  FUNC11(1,FUNC12("ai->length=%d",ai->length));

  if(ai->length)
  {
    if(!FUNC7(&ai->info[1],(word)ai->length,"ssss",ai_parms))
    {
      FUNC11(1,FUNC12("ai_parms[0].length=%d/0x%x",ai_parms[0].length,FUNC1(ai_parms[0].info+1)));
      ch = 0;
      if(ai_parms[0].length)
      {
        ch = FUNC1(ai_parms[0].info+1);
        FUNC11(1,FUNC12("BCH-I=0x%x",ch));
      }
    }
  }

  if(plci->State==INC_CON_CONNECTED_ALERT)
  {
    FUNC11(1,FUNC12("Connected Alert Call_Res"));
    if (a->Info_Mask[appl->Id-1] & 0x200)
    {
    /* early B3 connect (CIP mask bit 9) no release after a disc */
      FUNC5(plci,LLI,"\x01\x01");
    }
    FUNC6(plci, CONN_NR, &parms[2]);
    FUNC6(plci, LLC, &parms[4]);
    FUNC2(plci, &parms[5]);
    plci->State = INC_CON_ACCEPT;
    FUNC16(plci, CALL_RES,0);
    return 1;
  }
  else if(plci->State==INC_CON_PENDING || plci->State==INC_CON_ALERT) {
    FUNC10 (plci, (word)(appl->Id-1));
    FUNC13 (plci);
    Reject = FUNC1(parms[0].info);
    FUNC11(1,FUNC12("Reject=0x%x",Reject));
    if(Reject) 
    {
      if(FUNC9 (plci)) 
      {
        if((Reject&0xff00)==0x3400) 
        {
          esc_t[2] = ((byte)(Reject&0x00ff)) | 0x80;
          FUNC5(plci,ESC,esc_t);
          FUNC2(plci, &parms[5]);
          FUNC16(plci,REJECT,0);
        }      
        else if(Reject==1 || Reject>9) 
        {
          FUNC2(plci, &parms[5]);
          FUNC16(plci,HANGUP,0);
        }
        else 
        {
          esc_t[2] = cau_t[(Reject&0x000f)];
          FUNC5(plci,ESC,esc_t);
          FUNC2(plci, &parms[5]);
          FUNC16(plci,REJECT,0);
        }
        plci->appl = appl;
      }
      else 
      {
        FUNC15(appl, _DISCONNECT_I, Id, 0, "w", _OTHER_APPL_CONNECTED);
      }
    }
    else {
      plci->appl = appl;
      if(Id & EXT_CONTROLLER){
        if(FUNC0(a, plci, appl, 0)){
          FUNC11(1,FUNC12("connect_res(error from AdvCodecSupport)"));
          FUNC16(plci,HANGUP,0);
          return 1;
        }
        if(plci->tel == ADV_VOICE && a->AdvCodecPLCI)
        {
          Info = FUNC4(plci, &parms[1]);
          if (Info)
          {
            FUNC11(1,FUNC12("connect_res(error from add_b23)"));
            FUNC16(plci,HANGUP,0);
            return 1;
          }
          if(plci->adv_nl)
          {
            FUNC14(plci, ASSIGN, 0);
          }
        }
      }
      else
      {
        plci->tel = 0;
        if(ch!=2)
        {
          Info = FUNC4(plci, &parms[1]);
          if (Info)
          {
            FUNC11(1,FUNC12("connect_res(error from add_b23 2)"));
            FUNC16(plci,HANGUP,0);
            return 1;
          }
        }
        FUNC14(plci, ASSIGN, 0);
      }

      if(plci->spoofed_msg==SPOOFING_REQUIRED)
      {
        FUNC8(parms, "wsssss", &plci->saved_msg);
        plci->spoofed_msg = CALL_RES;
        plci->internal_command = BLOCK_PLCI;
        plci->command = 0;
        FUNC11(1,FUNC12("Spoof"));
      }
      else
      {
        FUNC3 (plci, &parms[1], ch, plci->B1_facilities);
        if (a->Info_Mask[appl->Id-1] & 0x200)
        {
          /* early B3 connect (CIP mask bit 9) no release after a disc */
          FUNC5(plci,LLI,"\x01\x01");
        }
        FUNC6(plci, CONN_NR, &parms[2]);
        FUNC6(plci, LLC, &parms[4]);
        FUNC2(plci, &parms[5]);
        plci->State = INC_CON_ACCEPT;
        FUNC16(plci, CALL_RES,0);
      }

      for(i=0; i<max_appl; i++) {
        if(FUNC17 (plci, i)) {
          FUNC15(&application[i], _DISCONNECT_I, Id, 0, "w", _OTHER_APPL_CONNECTED);
        }
      }
    }
  }
  return 1;
}