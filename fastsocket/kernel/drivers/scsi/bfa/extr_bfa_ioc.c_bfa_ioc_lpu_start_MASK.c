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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  pss_ctl_reg; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  __PSS_LPU0_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bfa_ioc_s *ioc)
{
	u32	pss_ctl;

	/*
	 * Take processor out of reset.
	 */
	pss_ctl = FUNC0(ioc->ioc_regs.pss_ctl_reg);
	pss_ctl &= ~__PSS_LPU0_RESET;

	FUNC1(pss_ctl, ioc->ioc_regs.pss_ctl_reg);
}