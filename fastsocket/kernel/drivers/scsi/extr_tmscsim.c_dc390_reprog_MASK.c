#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dc390_dcb {int /*<<< orphan*/  CtrlR4; int /*<<< orphan*/  CtrlR3; int /*<<< orphan*/  SyncOffset; int /*<<< orphan*/  SyncPeriod; } ;
struct dc390_acb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CtrlReg3 ; 
 int /*<<< orphan*/  CtrlReg4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Sync_Offset ; 
 int /*<<< orphan*/  Sync_Period ; 
 int /*<<< orphan*/  FUNC1 (struct dc390_acb*,struct dc390_dcb*) ; 

__attribute__((used)) static void __inline__
FUNC2 (struct dc390_acb* pACB, struct dc390_dcb* pDCB)
{
  FUNC0 (Sync_Period, pDCB->SyncPeriod);
  FUNC0 (Sync_Offset, pDCB->SyncOffset);
  FUNC0 (CtrlReg3, pDCB->CtrlR3);
  FUNC0 (CtrlReg4, pDCB->CtrlR4);
  FUNC1 (pACB, pDCB);
}