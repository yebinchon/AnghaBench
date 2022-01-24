#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  size_t word ;
typedef  int /*<<< orphan*/  dword ;
typedef  int byte ;
struct TYPE_18__ {int Id; } ;
struct TYPE_16__ {scalar_t__ Id; } ;
struct TYPE_15__ {int Id; } ;
struct TYPE_17__ {scalar_t__ State; int /*<<< orphan*/  nl_remove_id; TYPE_2__ NL; TYPE_1__ Sig; TYPE_4__* appl; } ;
typedef  TYPE_3__ PLCI ;
typedef  int /*<<< orphan*/  DIVA_CAPI_ADAPTER ;
typedef  TYPE_4__ APPL ;
typedef  int /*<<< orphan*/  API_PARSE ;

/* Variables and functions */
 int CONFIRM ; 
 int /*<<< orphan*/  HANGUP ; 
 scalar_t__ INC_CON_ALERT ; 
 scalar_t__ INC_CON_PENDING ; 
 scalar_t__ INC_DIS_PENDING ; 
 void* OUTG_DIS_PENDING ; 
 int /*<<< orphan*/  REMOVE ; 
 int _DISCONNECT_I ; 
 int _DISCONNECT_R ; 
 size_t _WRONG_IDENTIFIER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* application ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 size_t max_appl ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int /*<<< orphan*/ ,size_t,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_3__*,size_t) ; 

__attribute__((used)) static byte FUNC9(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
			   PLCI *plci, APPL *appl, API_PARSE *msg)
{
  word Info;
  word i;

  FUNC2(1,FUNC3("disconnect_req"));

  Info = _WRONG_IDENTIFIER;

  if(plci)
  {
    if(plci->State==INC_CON_PENDING || plci->State==INC_CON_ALERT)
    {
      FUNC1 (plci, (word)(appl->Id-1));
      plci->appl = appl;
      for(i=0; i<max_appl; i++)
      {
        if(FUNC8 (plci, i))
          FUNC6(&application[i], _DISCONNECT_I, Id, 0, "w", 0);
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
            FUNC0(plci, &msg[0]);
            FUNC7(plci,HANGUP,0);
            plci->State = OUTG_DIS_PENDING;
            return 1;
          }
        }
        else
        {
          if (plci->NL.Id && !plci->nl_remove_id)
          {
            FUNC4 (plci);
            FUNC5(plci,REMOVE,0);
          FUNC6(appl,_DISCONNECT_R|CONFIRM,Id,Number,"w",0);
          FUNC6(appl, _DISCONNECT_I, Id, 0, "w", 0);
          plci->State = INC_DIS_PENDING;
          }
          return 1;
        }
      }
    }

  if(!appl)  return false;
  FUNC6(appl, _DISCONNECT_R|CONFIRM, Id, Number, "w",Info);
  return false;
}