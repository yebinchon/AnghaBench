#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t word ;
typedef  int dword ;
typedef  scalar_t__ byte ;
struct TYPE_12__ {int manufacturer_features; scalar_t__* ncci_state; } ;
struct TYPE_11__ {int ncpi_state; int B3_prot; scalar_t__ B2_prot; scalar_t__* inc_dis_ncci_table; scalar_t__ State; TYPE_1__* adapter; int /*<<< orphan*/  appl; scalar_t__ channels; int /*<<< orphan*/  call_dir; scalar_t__ fax_connect_info_length; scalar_t__ requested_options_conn; } ;
struct TYPE_10__ {scalar_t__* ncci_state; } ;
typedef  TYPE_2__ PLCI ;
typedef  TYPE_3__ DIVA_CAPI_ADAPTER ;
typedef  int /*<<< orphan*/  APPL ;
typedef  int /*<<< orphan*/  API_PARSE ;

/* Variables and functions */
 scalar_t__ B2_LAPD ; 
 scalar_t__ B2_LAPD_FREE_SAPI_SEL ; 
 int B3_ISO8208 ; 
 int B3_T90NL ; 
 int B3_X25_DCE ; 
 int /*<<< orphan*/  CALL_DIR_FORCE_OUTG_NL ; 
 scalar_t__ IDLE ; 
 scalar_t__ INC_DIS_PENDING ; 
 int MANUFACTURER_FEATURE_FAX_PAPER_FORMATS ; 
 size_t MAX_CHANNELS_PER_PLCI ; 
 int /*<<< orphan*/  N_EDATA ; 
 scalar_t__ SUSPENDING ; 
 int /*<<< orphan*/  _DISCONNECT_I ; 
 int /*<<< orphan*/  _FACILITY_I ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  fax_disconnect_command ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static byte FUNC7(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
			      PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word ncci;
  word i;

  ncci = (word)(Id>>16);
  FUNC0(1,FUNC1("disconnect_b3_res(ncci=0x%x",ncci));
  if(plci && ncci) {
    plci->requested_options_conn = 0;
    plci->fax_connect_info_length = 0;
    plci->ncpi_state = 0x00;
    if (((plci->B3_prot != B3_T90NL) && (plci->B3_prot != B3_ISO8208) && (plci->B3_prot != B3_X25_DCE))
      && ((plci->B2_prot != B2_LAPD) && (plci->B2_prot != B2_LAPD_FREE_SAPI_SEL)))
    {
      plci->call_dir |= CALL_DIR_FORCE_OUTG_NL;
    }
    for(i=0; i<MAX_CHANNELS_PER_PLCI && plci->inc_dis_ncci_table[i]!=(byte)ncci; i++);
    if(i<MAX_CHANNELS_PER_PLCI) {
      if(plci->channels)plci->channels--;
      for(; i<MAX_CHANNELS_PER_PLCI-1; i++) plci->inc_dis_ncci_table[i] = plci->inc_dis_ncci_table[i+1];
      plci->inc_dis_ncci_table[MAX_CHANNELS_PER_PLCI-1] = 0;

      FUNC2 (plci, ncci);

      if((plci->State==IDLE || plci->State==SUSPENDING) && !plci->channels){
        if(plci->State == SUSPENDING){
          FUNC5(plci->appl,
                _FACILITY_I,
                Id & 0xffffL,
                0,
                "ws", (word)3, "\x03\x04\x00\x00");
          FUNC5(plci->appl, _DISCONNECT_I, Id & 0xffffL, 0, "w", 0);
        }
        FUNC4(plci);
        plci->State=IDLE;
      }
    }
    else
    {
      if ((a->manufacturer_features & MANUFACTURER_FEATURE_FAX_PAPER_FORMATS)
       && ((plci->B3_prot == 4) || (plci->B3_prot == 5))
       && (a->ncci_state[ncci] == INC_DIS_PENDING))
      {
        FUNC2 (plci, ncci);

        FUNC3(plci,N_EDATA,(byte)ncci);

        plci->adapter->ncci_state[ncci] = IDLE;
        FUNC6 (Id, plci, fax_disconnect_command);
        return 1;
      }
    }
  }
  return false;
}