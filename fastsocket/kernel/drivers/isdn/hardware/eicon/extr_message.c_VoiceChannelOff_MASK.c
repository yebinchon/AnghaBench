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
struct TYPE_8__ {TYPE_1__* adapter; } ;
struct TYPE_7__ {scalar_t__ AdvSignalPLCI; } ;
typedef  TYPE_2__ PLCI ;

/* Variables and functions */
 int /*<<< orphan*/  FTY ; 
 int /*<<< orphan*/  TEL_CTRL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(PLCI *plci)
{
  FUNC2(1,FUNC3("ExtDevOFF"));
  FUNC0(plci,FTY,"\x02\x01\x08");             /* B Off */
  FUNC5(plci,TEL_CTRL,0);
  FUNC4(plci);
  if(plci->adapter->AdvSignalPLCI)
  {
    FUNC1 (plci->adapter->AdvSignalPLCI);
  }
}