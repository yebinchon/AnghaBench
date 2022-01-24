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
typedef  scalar_t__ byte ;
struct TYPE_9__ {size_t listen_active; size_t max_plci; TYPE_1__* plci; scalar_t__ max_listen; int /*<<< orphan*/  adapter_disabled; } ;
struct TYPE_8__ {int /*<<< orphan*/  internal_command; int /*<<< orphan*/  State; scalar_t__ notifiedcall; } ;
typedef  TYPE_1__ PLCI ;
typedef  TYPE_2__ DIVA_CAPI_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  ASSIGN ; 
 int CAI ; 
 int /*<<< orphan*/  DSIG_ID ; 
 int KEY ; 
 int /*<<< orphan*/  LISTENING ; 
 int /*<<< orphan*/  LISTEN_SIG_ASSIGN_PEND ; 
 int LLI ; 
 int OAD ; 
 int SHIFT ; 
 int SIN ; 
 int UID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,...) ; 
 size_t FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  remove_started ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(DIVA_CAPI_ADAPTER *a)
{
  word i,j;
  PLCI   * plci;
  byte activnotifiedcalls = 0;

  FUNC1(1,FUNC2("listen_check(%d,%d)",a->listen_active,a->max_listen));
  if (!remove_started && !a->adapter_disabled)
  {
    for(i=0;i<a->max_plci;i++)
    {
      plci = &(a->plci[i]);
      if(plci->notifiedcall) activnotifiedcalls++;
    }
    FUNC1(1,FUNC2("listen_check(%d)",activnotifiedcalls));

    for(i=a->listen_active; i < ((word)(a->max_listen+activnotifiedcalls)); i++) {
      if((j=FUNC3(a))) {
        a->listen_active++;
        plci = &a->plci[j-1];
        plci->State = LISTENING;

        FUNC0(plci,OAD,"\x01\xfd");

        FUNC0(plci,KEY,"\x04\x43\x41\x32\x30");

        FUNC0(plci,CAI,"\x01\xc0");
        FUNC0(plci,UID,"\x06\x43\x61\x70\x69\x32\x30");
        FUNC0(plci,LLI,"\x01\xc4");                  /* support Dummy CR FAC + MWI + SpoofNotify */       
        FUNC0(plci,SHIFT|6,NULL);
        FUNC0(plci,SIN,"\x02\x00\x00");
        plci->internal_command = LISTEN_SIG_ASSIGN_PEND;     /* do indicate_req if OK  */
        FUNC5(plci,ASSIGN,DSIG_ID);
        FUNC4(plci);
      }
    }
  }
}