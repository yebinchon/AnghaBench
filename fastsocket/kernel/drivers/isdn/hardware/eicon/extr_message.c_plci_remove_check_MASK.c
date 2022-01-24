#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int word ;
struct TYPE_12__ {int Id; } ;
struct TYPE_11__ {int /*<<< orphan*/  Id; } ;
struct TYPE_13__ {int /*<<< orphan*/  adapter; scalar_t__ notifiedcall; int /*<<< orphan*/ * appl; scalar_t__ channels; int /*<<< orphan*/  State; scalar_t__ Id; TYPE_2__ Sig; int /*<<< orphan*/  tel; TYPE_1__ NL; } ;
typedef  TYPE_3__ PLCI ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  IDLE ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static word FUNC9(PLCI   *plci)
{
  if(!plci) return true;
  if(!plci->NL.Id && FUNC1 (plci))
  {
    if(plci->Sig.Id == 0xff)
      plci->Sig.Id = 0;
    if(!plci->Sig.Id)
    {
      FUNC4(1,FUNC5("plci_remove_complete(%x)",plci->Id));
      FUNC4(1,FUNC5("tel=0x%x,Sig=0x%x",plci->tel,plci->Sig.Id));
      if (plci->Id)
      {
        FUNC0(plci->adapter, plci);
        FUNC3 (plci);
        FUNC7 (plci, 0, false);
        FUNC8 (plci);
        FUNC2 (plci);
        plci->Id = 0;
        plci->State = IDLE;
        plci->channels = 0;
        plci->appl = NULL;
        plci->notifiedcall = 0;
      }
      FUNC6(plci->adapter);
      return true;
    }
  }
  return false;
}