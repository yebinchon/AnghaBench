#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int word ;
typedef  int /*<<< orphan*/  dword ;
typedef  int byte ;
struct TYPE_22__ {scalar_t__ length; int /*<<< orphan*/ * info; } ;
struct TYPE_21__ {int NullCREnable; } ;
struct TYPE_20__ {TYPE_1__* plci; } ;
struct TYPE_19__ {TYPE_3__* appl; int /*<<< orphan*/  internal_command; scalar_t__ State; } ;
typedef  TYPE_1__ PLCI ;
typedef  TYPE_2__ DIVA_CAPI_ADAPTER ;
typedef  TYPE_3__ APPL ;
typedef  TYPE_4__ API_PARSE ;

/* Variables and functions */
 int /*<<< orphan*/  ASSIGN ; 
 int /*<<< orphan*/  CAI ; 
 int CONFIRM ; 
 int /*<<< orphan*/  CPN ; 
 int /*<<< orphan*/  C_NCR_FAC_REQ ; 
 int /*<<< orphan*/  DSIG_ID ; 
 int /*<<< orphan*/  FACILITY_REQ ; 
 int /*<<< orphan*/  INFO_REQ ; 
 int /*<<< orphan*/  KEY ; 
 int /*<<< orphan*/  NCR_FACILITY ; 
 int /*<<< orphan*/  UID ; 
 int /*<<< orphan*/  USER_DATA ; 
 int /*<<< orphan*/  UUI ; 
 int _INFO_R ; 
 int _OUT_OF_PLCI ; 
 int _WRONG_MESSAGE_FORMAT ; 
 int _WRONG_STATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static byte FUNC10(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
		     PLCI *plci, APPL *appl, API_PARSE *msg)
{
  word i;
  API_PARSE * ai;
  PLCI   * rc_plci = NULL;
    API_PARSE ai_parms[5];
  word Info = 0;

  FUNC4(1,FUNC5("info_req"));
  for(i=0;i<5;i++) ai_parms[i].length = 0;

  ai = &msg[1];

  if(ai->length)
  {
    if(FUNC3(&ai->info[1],(word)ai->length,"ssss",ai_parms))
    {
      FUNC4(1,FUNC5("AddInfo wrong"));
      Info = _WRONG_MESSAGE_FORMAT;
    }
  }
  if(!a) Info = _WRONG_STATE;

  if(!Info && plci)
  {                /* no fac, with CPN, or KEY */
    rc_plci = plci;
    if(!ai_parms[3].length && plci->State && (msg[0].length || ai_parms[1].length) )
    {
      /* overlap sending option */
      FUNC4(1,FUNC5("OvlSnd"));
      FUNC2(plci,CPN,&msg[0]);
      FUNC2(plci,KEY,&ai_parms[1]);
      FUNC9(plci,INFO_REQ,0);
      FUNC7(plci);
      return false;
    }

    if(plci->State && ai_parms[2].length)
    {
      /* User_Info option */
      FUNC4(1,FUNC5("UUI"));
      FUNC2(plci,UUI,&ai_parms[2]);
      FUNC9(plci,USER_DATA,0);
    }
    else if(plci->State && ai_parms[3].length)
    {
      /* Facility option */
      FUNC4(1,FUNC5("FAC"));
      FUNC2(plci,CPN,&msg[0]);
      FUNC0(plci, &msg[1]);
      FUNC9(plci,FACILITY_REQ,0);
    }
    else
    {
      Info = _WRONG_STATE;
    }
  }
  else if((ai_parms[1].length || ai_parms[2].length || ai_parms[3].length) && !Info)
  {
    /* NCR_Facility option -> send UUI and Keypad too */
    FUNC4(1,FUNC5("NCR_FAC"));
    if((i=FUNC6(a)))
    {
      rc_plci = &a->plci[i-1];
      appl->NullCREnable  = true;
      rc_plci->internal_command = C_NCR_FAC_REQ;
      rc_plci->appl = appl;
      FUNC1(rc_plci,CAI,"\x01\x80");
      FUNC1(rc_plci,UID,"\x06\x43\x61\x70\x69\x32\x30");
      FUNC9(rc_plci,ASSIGN,DSIG_ID);
      FUNC7(rc_plci);
    }
    else
    {
      Info = _OUT_OF_PLCI;
    }

    if(!Info)
    {
      FUNC2(rc_plci,CPN,&msg[0]);
      FUNC0(rc_plci, &msg[1]);
      FUNC9(rc_plci,NCR_FACILITY,0);
      FUNC7(rc_plci);
      return false;
     /* for application controlled supplementary services    */
    }
  }

  if (!rc_plci)
  {
    Info = _WRONG_MESSAGE_FORMAT;
  }

  if(!Info)
  {
    FUNC7(rc_plci);
  }
  else
  {  /* appl is not assigned to a PLCI or error condition */
    FUNC4(1,FUNC5("localInfoCon"));
    FUNC8(appl,
          _INFO_R|CONFIRM,
          Id,
          Number,
          "w",Info);
  }
  return false;
}