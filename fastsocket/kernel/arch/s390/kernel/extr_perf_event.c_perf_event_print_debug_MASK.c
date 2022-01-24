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
struct cpumf_ctr_info {int /*<<< orphan*/  act_ctl; int /*<<< orphan*/  enable_ctl; int /*<<< orphan*/  auth_ctl; int /*<<< orphan*/  csvn; int /*<<< orphan*/  cfvn; } ;
typedef  int /*<<< orphan*/  cf_info ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct cpumf_ctr_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,struct cpumf_ctr_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cpumf_ctr_info*) ; 
 int FUNC7 () ; 

void FUNC8(void)
{
	struct cpumf_ctr_info cf_info;
	unsigned long flags;
	int cpu;

	if (!FUNC0())
		return;

	FUNC2(flags);

	cpu = FUNC7();
	FUNC3(&cf_info, 0, sizeof(cf_info));
	if (!FUNC6(&cf_info)) {
		FUNC4("CPU[%i] CPUM_CF: ver=%u.%u A=%04x E=%04x C=%04x\n",
			cpu, cf_info.cfvn, cf_info.csvn,
			cf_info.auth_ctl, cf_info.enable_ctl, cf_info.act_ctl);
		FUNC5("CPUMF Query: ", DUMP_PREFIX_OFFSET,
				     &cf_info, sizeof(cf_info));
	}

	FUNC1(flags);
}