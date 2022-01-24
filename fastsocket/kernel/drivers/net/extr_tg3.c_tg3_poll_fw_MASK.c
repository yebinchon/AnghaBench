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
typedef  int /*<<< orphan*/  u32 ;
struct tg3 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ASIC_REV_5906 ; 
 scalar_t__ CHIPREV_ID_57765_A0 ; 
 int ENODEV ; 
 int /*<<< orphan*/  IS_SSB_CORE ; 
 int /*<<< orphan*/  NIC_SRAM_FIRMWARE_MBOX ; 
 int /*<<< orphan*/  NIC_SRAM_FIRMWARE_MBOX_MAGIC1 ; 
 int /*<<< orphan*/  NO_FWARE_REPORTED ; 
 int /*<<< orphan*/  VCPU_STATUS ; 
 int VCPU_STATUS_INIT_DONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct tg3*) ; 
 scalar_t__ FUNC3 (struct tg3*) ; 
 scalar_t__ FUNC4 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tg3*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct tg3 *tp)
{
	int i;
	u32 val;

	if (FUNC4(tp, NO_FWARE_REPORTED))
		return 0;

	if (FUNC4(tp, IS_SSB_CORE)) {
		/* We don't use firmware. */
		return 0;
	}

	if (FUNC2(tp) == ASIC_REV_5906) {
		/* Wait up to 20ms for init done. */
		for (i = 0; i < 200; i++) {
			if (FUNC7(VCPU_STATUS) & VCPU_STATUS_INIT_DONE)
				return 0;
			FUNC8(100);
		}
		return -ENODEV;
	}

	/* Wait for firmware initialization to complete. */
	for (i = 0; i < 100000; i++) {
		FUNC6(tp, NIC_SRAM_FIRMWARE_MBOX, &val);
		if (val == ~NIC_SRAM_FIRMWARE_MBOX_MAGIC1)
			break;
		FUNC8(10);
	}

	/* Chip might not be fitted with firmware.  Some Sun onboard
	 * parts are configured like that.  So don't signal the timeout
	 * of the above loop as an error, but do report the lack of
	 * running firmware once.
	 */
	if (i >= 100000 && !FUNC4(tp, NO_FWARE_REPORTED)) {
		FUNC5(tp, NO_FWARE_REPORTED);

		FUNC1(tp->dev, "No firmware running\n");
	}

	if (FUNC3(tp) == CHIPREV_ID_57765_A0) {
		/* The 57765 A0 needs a little more
		 * time to do some important work.
		 */
		FUNC0(10);
	}

	return 0;
}