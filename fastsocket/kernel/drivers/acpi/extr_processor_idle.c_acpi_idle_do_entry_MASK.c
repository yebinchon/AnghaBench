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
struct acpi_processor_cx {scalar_t__ entry_method; int /*<<< orphan*/  address; } ;
struct TYPE_3__ {int /*<<< orphan*/  address; } ;
struct TYPE_4__ {TYPE_1__ xpm_timer_block; } ;

/* Variables and functions */
 scalar_t__ ACPI_CSTATE_FFH ; 
 scalar_t__ ACPI_CSTATE_HALT ; 
 TYPE_2__ acpi_gbl_FADT ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_processor_cx*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static inline void FUNC6(struct acpi_processor_cx *cx)
{
	/* Don't trace irqs off for idle */
	FUNC5();
	if (cx->entry_method == ACPI_CSTATE_FFH) {
		/* Call into architectural FFH based C-state */
		FUNC0(cx);
	} else if (cx->entry_method == ACPI_CSTATE_HALT) {
		FUNC1();
	} else {
		int unused;
		/* IO port based C-state */
		FUNC2(cx->address);
		/* Dummy wait op - must do something useless after P_LVL2 read
		   because chipsets cannot guarantee that STPCLK# signal
		   gets asserted in time to freeze execution properly. */
		unused = FUNC3(acpi_gbl_FADT.xpm_timer_block.address);
	}
	FUNC4();
}