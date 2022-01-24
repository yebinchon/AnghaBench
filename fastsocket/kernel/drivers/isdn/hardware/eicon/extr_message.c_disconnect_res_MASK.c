#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  word ;
typedef  int /*<<< orphan*/  dword ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_11__ {int Id; } ;
struct TYPE_10__ {scalar_t__ State; int /*<<< orphan*/  channels; } ;
typedef  TYPE_1__ PLCI ;
typedef  int /*<<< orphan*/  DIVA_CAPI_ADAPTER ;
typedef  TYPE_2__ APPL ;
typedef  int /*<<< orphan*/  API_PARSE ;

/* Variables and functions */
 scalar_t__ IDLE ; 
 scalar_t__ INC_DIS_PENDING ; 
 scalar_t__ SUSPENDING ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static byte FUNC7(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
			   PLCI *plci, APPL *appl, API_PARSE *msg)
{
  FUNC2(1,FUNC3("disconnect_res"));
  if(plci)
  {
        /* clear ind mask bit, just in case of collsion of          */
        /* DISCONNECT_IND and CONNECT_RES                           */
    FUNC1 (plci, (word)(appl->Id-1));
    FUNC4 (plci, 0);
    if(FUNC6(plci))
    {
      return 0;
    }
    if(plci->State==INC_DIS_PENDING
    || plci->State==SUSPENDING) {
      if(FUNC0 (plci)) {
        if(plci->State!=SUSPENDING)plci->State = IDLE;
        FUNC2(1,FUNC3("chs=%d",plci->channels));
        if(!plci->channels) {
          FUNC5(plci);
        }
      }
    }
  }
  return 0;
}