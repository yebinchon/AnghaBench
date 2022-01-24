#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int SoftBusRatio; unsigned int SoftBusRatio4; unsigned int SoftVID; int EnableSoftVID; int EnableSoftBusRatio; scalar_t__ RevisionKey; scalar_t__ RevisionID; } ;
union msr_longhaul {int /*<<< orphan*/  val; TYPE_2__ bits; } ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  address; } ;
struct TYPE_6__ {TYPE_1__ xpm_timer_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MSR_VIA_LONGHAUL ; 
 TYPE_3__ acpi_gbl_FADT ; 
 scalar_t__ can_scale_voltage ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  revid_errata ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(int cx_address, unsigned int mults_index,
			  unsigned int dir)
{
	union msr_longhaul longhaul;
	u32 t;

	FUNC4(MSR_VIA_LONGHAUL, longhaul.val);
	/* Setup new frequency */
	if (!revid_errata)
		longhaul.bits.RevisionKey = longhaul.bits.RevisionID;
	else
		longhaul.bits.RevisionKey = 0;
	longhaul.bits.SoftBusRatio = mults_index & 0xf;
	longhaul.bits.SoftBusRatio4 = (mults_index & 0x10) >> 4;
	/* Setup new voltage */
	if (can_scale_voltage)
		longhaul.bits.SoftVID = (mults_index >> 8) & 0x1f;
	/* Sync to timer tick */
	FUNC5();
	/* Raise voltage if necessary */
	if (can_scale_voltage && dir) {
		longhaul.bits.EnableSoftVID = 1;
		FUNC6(MSR_VIA_LONGHAUL, longhaul.val);
		/* Change voltage */
		if (!cx_address) {
			FUNC0();
			FUNC1();
		} else {
			FUNC0();
			/* Invoke C3 */
			FUNC2(cx_address);
			/* Dummy op - must do something useless after P_LVL3
			 * read */
			t = FUNC3(acpi_gbl_FADT.xpm_timer_block.address);
		}
		longhaul.bits.EnableSoftVID = 0;
		FUNC6(MSR_VIA_LONGHAUL, longhaul.val);
	}

	/* Change frequency on next halt or sleep */
	longhaul.bits.EnableSoftBusRatio = 1;
	FUNC6(MSR_VIA_LONGHAUL, longhaul.val);
	if (!cx_address) {
		FUNC0();
		FUNC1();
	} else {
		FUNC0();
		/* Invoke C3 */
		FUNC2(cx_address);
		/* Dummy op - must do something useless after P_LVL3 read */
		t = FUNC3(acpi_gbl_FADT.xpm_timer_block.address);
	}
	/* Disable bus ratio bit */
	longhaul.bits.EnableSoftBusRatio = 0;
	FUNC6(MSR_VIA_LONGHAUL, longhaul.val);

	/* Reduce voltage if necessary */
	if (can_scale_voltage && !dir) {
		longhaul.bits.EnableSoftVID = 1;
		FUNC6(MSR_VIA_LONGHAUL, longhaul.val);
		/* Change voltage */
		if (!cx_address) {
			FUNC0();
			FUNC1();
		} else {
			FUNC0();
			/* Invoke C3 */
			FUNC2(cx_address);
			/* Dummy op - must do something useless after P_LVL3
			 * read */
			t = FUNC3(acpi_gbl_FADT.xpm_timer_block.address);
		}
		longhaul.bits.EnableSoftVID = 0;
		FUNC6(MSR_VIA_LONGHAUL, longhaul.val);
	}
}