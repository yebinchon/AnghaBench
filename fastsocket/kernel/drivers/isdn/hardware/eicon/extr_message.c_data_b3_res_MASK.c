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
typedef  int word ;
typedef  int dword ;
typedef  scalar_t__ byte ;
struct TYPE_16__ {int /*<<< orphan*/  info; } ;
struct TYPE_15__ {int MaxBuffer; int* DataNCCI; int* DataFlags; } ;
struct TYPE_14__ {int /*<<< orphan*/ * ncci_ch; scalar_t__ Id; } ;
struct TYPE_13__ {scalar_t__ Id; } ;
typedef  TYPE_1__ PLCI ;
typedef  TYPE_2__ DIVA_CAPI_ADAPTER ;
typedef  TYPE_3__ APPL ;
typedef  TYPE_4__ API_PARSE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  N_DATA_ACK ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static byte FUNC7(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
			PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word n;
  word ncci;
  word NCCIcode;

  FUNC4(1,FUNC5("data_b3_res"));

  ncci = (word)(Id>>16);
  if(plci && ncci) {
    n = FUNC0(parms[0].info);
    FUNC4(1,FUNC5("free(%d)",n));
    NCCIcode = ncci | (((word) a->Id) << 8);
    if(n<appl->MaxBuffer &&
       appl->DataNCCI[n]==NCCIcode &&
       (byte)(appl->DataFlags[n]>>8)==plci->Id) {
      FUNC4(1,FUNC5("found"));
      appl->DataNCCI[n] = 0;

      if (FUNC1 (plci, a->ncci_ch[ncci])) {
        FUNC2 (plci, a->ncci_ch[ncci]);
      }
      FUNC3 (plci);

      if(appl->DataFlags[n] &4) {
        FUNC6(plci,N_DATA_ACK,(byte)ncci);
        return 1;
      }
    }
  }
  return false;
}