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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACHINE_PANICED ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  OMAP_LPG1_LCR ; 
 int /*<<< orphan*/  OMAP_LPG1_PMR ; 
 int /*<<< orphan*/  machine_state ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *this, unsigned long event,
	 void *ptr)
{
	if (FUNC1(MACHINE_PANICED, &machine_state))
		return NOTIFY_DONE;

	/* Flash power LED */
	FUNC0(0x78, OMAP_LPG1_LCR);
	FUNC0(0x01, OMAP_LPG1_PMR);	/* Enable clock */

	return NOTIFY_DONE;
}