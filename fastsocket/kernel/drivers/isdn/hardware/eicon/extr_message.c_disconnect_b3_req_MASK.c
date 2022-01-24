#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t word ;
typedef  int dword ;
typedef  int byte ;
struct TYPE_16__ {int length; int /*<<< orphan*/ * info; } ;
struct TYPE_15__ {scalar_t__* ncci_state; TYPE_1__* ncci; int /*<<< orphan*/ * ncci_ch; } ;
struct TYPE_14__ {int B3_prot; int send_disc; scalar_t__ command; } ;
struct TYPE_13__ {scalar_t__ data_pending; } ;
typedef  TYPE_2__ PLCI ;
typedef  TYPE_3__ DIVA_CAPI_ADAPTER ;
typedef  int /*<<< orphan*/  APPL ;
typedef  TYPE_4__ API_PARSE ;

/* Variables and functions */
 int B3_T30 ; 
 int B3_T30_WITH_EXTENSIONS ; 
 int B3_TRANSPARENT ; 
 int CONFIRM ; 
 scalar_t__ CONNECTED ; 
 scalar_t__ INC_ACT_PENDING ; 
 scalar_t__ INC_CON_PENDING ; 
 int /*<<< orphan*/  N_DISC ; 
 scalar_t__ OUTG_CON_PENDING ; 
 scalar_t__ OUTG_DIS_PENDING ; 
 int _DISCONNECT_B3_R ; 
 size_t _WRONG_IDENTIFIER ; 
 size_t _WRONG_STATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,size_t,char*,size_t) ; 

__attribute__((used)) static byte FUNC8(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
			      PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word Info;
  word ncci;
  API_PARSE * ncpi;

  FUNC4(1,FUNC5("disconnect_b3_req"));

  Info = _WRONG_IDENTIFIER;
  ncci = (word)(Id>>16);
  if (plci && ncci)
  {
    Info = _WRONG_STATE;
    if ((a->ncci_state[ncci] == CONNECTED)
     || (a->ncci_state[ncci] == OUTG_CON_PENDING)
     || (a->ncci_state[ncci] == INC_CON_PENDING)
     || (a->ncci_state[ncci] == INC_ACT_PENDING))
    {
      a->ncci_state[ncci] = OUTG_DIS_PENDING;
      FUNC1 (plci, a->ncci_ch[ncci]);
      FUNC2 (plci);

      if (a->ncci[ncci].data_pending
       && ((plci->B3_prot == B3_TRANSPARENT)
        || (plci->B3_prot == B3_T30)
        || (plci->B3_prot == B3_T30_WITH_EXTENSIONS)))
      {
        plci->send_disc = (byte)ncci;
        plci->command = 0;
        return false;
      }
      else
      {
        FUNC3 (plci, ncci);

        if(plci->B3_prot==2 || plci->B3_prot==3)
        {
          ncpi = &parms[0];
          if(ncpi->length>3)
          {
            FUNC0(plci, (word)(ncpi->length - 3) ,(byte   *)&(ncpi->info[4]));
          }
        }
        FUNC6(plci,N_DISC,(byte)ncci);
      }
      return 1;
    }
  }
  FUNC7(appl,
        _DISCONNECT_B3_R|CONFIRM,
        Id,
        Number,
        "w",Info);
  return false;
}