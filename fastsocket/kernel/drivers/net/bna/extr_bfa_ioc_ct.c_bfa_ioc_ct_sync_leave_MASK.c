#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_fail_sync; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;

/* Variables and functions */
 int FUNC0 (struct bfa_ioc*) ; 
 int FUNC1 (struct bfa_ioc*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_ioc *ioc)
{
	u32 r32 = FUNC2(ioc->ioc_regs.ioc_fail_sync);
	u32 sync_msk = FUNC1(ioc) |
					FUNC0(ioc);

	FUNC3((r32 & ~sync_msk), ioc->ioc_regs.ioc_fail_sync);
}