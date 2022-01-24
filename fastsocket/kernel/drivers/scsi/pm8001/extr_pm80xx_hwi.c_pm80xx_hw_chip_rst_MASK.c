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
typedef  int u32 ;
struct pm8001_hba_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPC_REG_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct pm8001_hba_info *pm8001_ha)
{
	 u32 i;

	FUNC0(pm8001_ha,
		FUNC3("chip reset start\n"));

	/* do SPCv chip reset. */
	FUNC2(pm8001_ha, 0, SPC_REG_SOFT_RESET, 0x11);
	FUNC0(pm8001_ha,
		FUNC3("SPC soft reset Complete\n"));

	/* Check this ..whether delay is required or no */
	/* delay 10 usec */
	FUNC4(10);

	/* wait for 20 msec until the firmware gets reloaded */
	i = 20;
	do {
		FUNC1(1);
	} while ((--i) != 0);

	FUNC0(pm8001_ha,
		FUNC3("chip reset finished\n"));
}