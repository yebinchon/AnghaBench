#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t word ;
typedef  int dword ;
typedef  int byte ;
struct TYPE_8__ {scalar_t__* ncci_state; int /*<<< orphan*/ * ncci_ch; } ;
struct TYPE_7__ {scalar_t__ State; } ;
typedef  TYPE_1__ PLCI ;
typedef  TYPE_2__ DIVA_CAPI_ADAPTER ;
typedef  int /*<<< orphan*/  APPL ;
typedef  int /*<<< orphan*/  API_PARSE ;

/* Variables and functions */
 void* CONNECTED ; 
 scalar_t__ IDLE ; 
 scalar_t__ INC_ACT_PENDING ; 
 scalar_t__ INC_CON_CONNECTED_ALERT ; 
 scalar_t__ INC_DIS_PENDING ; 
 scalar_t__ OUTG_DIS_PENDING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 

__attribute__((used)) static byte FUNC4(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
			     PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word ncci;

  ncci = (word)(Id>>16);
  FUNC2(1,FUNC3("connect_b3_a_res(ncci=0x%x)",ncci));

  if (plci && ncci && (plci->State != IDLE) && (plci->State != INC_DIS_PENDING)
   && (plci->State != OUTG_DIS_PENDING))
  {
    if(a->ncci_state[ncci]==INC_ACT_PENDING) {
      a->ncci_state[ncci] = CONNECTED;
      if(plci->State!=INC_CON_CONNECTED_ALERT) plci->State = CONNECTED;
      FUNC0 (plci, a->ncci_ch[ncci]);
      FUNC1 (plci);
    }
  }
  return false;
}