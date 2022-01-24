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
 int /*<<< orphan*/  HPET_CFG ; 
 unsigned long HPET_CFG_ENABLE ; 
 unsigned long HPET_CFG_LEGACY ; 
 int /*<<< orphan*/  hpet_address ; 
 scalar_t__ hpet_legacy_int_enabled ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpet_virt_address ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
	unsigned long cfg;

	if (!FUNC2() || !hpet_address || !hpet_virt_address)
		return;

	cfg = FUNC0(HPET_CFG);
	if (hpet_legacy_int_enabled) {
		cfg &= ~HPET_CFG_LEGACY;
		hpet_legacy_int_enabled = 0;
	}
	cfg &= ~HPET_CFG_ENABLE;
	FUNC1(cfg, HPET_CFG);
}