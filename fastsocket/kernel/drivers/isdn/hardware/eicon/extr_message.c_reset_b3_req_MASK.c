#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t word ;
typedef  int dword ;
typedef  int byte ;
struct TYPE_9__ {int /*<<< orphan*/ * ncci_state; } ;
struct TYPE_8__ {int B3_prot; } ;
typedef  TYPE_1__ PLCI ;
typedef  TYPE_2__ DIVA_CAPI_ADAPTER ;
typedef  int /*<<< orphan*/  APPL ;
typedef  int /*<<< orphan*/  API_PARSE ;

/* Variables and functions */
#define  B3_ISO8208 130 
#define  B3_TRANSPARENT 129 
#define  B3_X25_DCE 128 
 int CONFIRM ; 
 int /*<<< orphan*/  CONNECTED ; 
 size_t GOOD ; 
 int /*<<< orphan*/  N_RESET ; 
 int _RESET_B3_R ; 
 size_t _WRONG_IDENTIFIER ; 
 size_t _WRONG_STATE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reset_b3_command ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,size_t,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static byte FUNC6(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
			 PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word Info;
  word ncci;

  FUNC0(1,FUNC1("reset_b3_req"));

  Info = _WRONG_IDENTIFIER;
  ncci = (word)(Id>>16);
  if(plci && ncci)
  {
    Info = _WRONG_STATE;
    switch (plci->B3_prot)
    {
    case B3_ISO8208:
    case B3_X25_DCE:
      if(a->ncci_state[ncci]==CONNECTED)
      {
        FUNC2(plci,N_RESET,(byte)ncci);
        FUNC3(plci);
        Info = GOOD;
      }
      break;
    case B3_TRANSPARENT:
      if(a->ncci_state[ncci]==CONNECTED)
      {
        FUNC5 (Id, plci, reset_b3_command);
        Info = GOOD;
      }
      break;
    }
  }
  /* reset_b3 must result in a reset_b3_con & reset_b3_Ind */
  FUNC4(appl,
        _RESET_B3_R|CONFIRM,
        Id,
        Number,
        "w",Info);
  return false;
}