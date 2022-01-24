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

/* Variables and functions */
 int /*<<< orphan*/  BM_APBH_CTRL0_CLKGATE ; 
 int /*<<< orphan*/  BM_APBX_CTRL0_CLKGATE ; 
 scalar_t__ HW_APBH_CTRL0 ; 
 scalar_t__ HW_APBX_CTRL0 ; 
 scalar_t__ REGS_APBH_BASE ; 
 scalar_t__ REGS_APBX_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC1(void)
{
	FUNC0(BM_APBH_CTRL0_CLKGATE, REGS_APBH_BASE + HW_APBH_CTRL0);
	FUNC0(BM_APBX_CTRL0_CLKGATE, REGS_APBX_BASE + HW_APBX_CTRL0);
}