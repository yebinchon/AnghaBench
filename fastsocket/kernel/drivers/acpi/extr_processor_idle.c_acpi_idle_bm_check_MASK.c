#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ bmisx; } ;
struct TYPE_4__ {TYPE_1__ piix4; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BITREG_BUS_MASTER_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ bm_check_disable ; 
 TYPE_2__ errata ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(void)
{
	u32 bm_status = 0;

	if (bm_check_disable)
		return 0;

	FUNC0(ACPI_BITREG_BUS_MASTER_STATUS, &bm_status);
	if (bm_status)
		FUNC1(ACPI_BITREG_BUS_MASTER_STATUS, 1);
	/*
	 * PIIX4 Erratum #18: Note that BM_STS doesn't always reflect
	 * the true state of bus mastering activity; forcing us to
	 * manually check the BMIDEA bit of each IDE channel.
	 */
	else if (errata.piix4.bmisx) {
		if ((FUNC2(errata.piix4.bmisx + 0x02) & 0x01)
		    || (FUNC2(errata.piix4.bmisx + 0x0A) & 0x01))
			bm_status = 1;
	}
	return bm_status;
}