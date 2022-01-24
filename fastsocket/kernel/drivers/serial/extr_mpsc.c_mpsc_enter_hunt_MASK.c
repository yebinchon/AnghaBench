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
struct TYPE_2__ {int /*<<< orphan*/  line; } ;
struct mpsc_port_info {int MPSC_CHR_2_m; scalar_t__ mpsc_base; scalar_t__ mirror_regs; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ MPSC_CHR_2 ; 
 int MPSC_CHR_2_EH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mpsc_port_info *pi)
{
	FUNC0("mpsc_enter_hunt[%d]: Hunting...\n", pi->port.line);

	if (pi->mirror_regs) {
		FUNC3(pi->MPSC_CHR_2_m | MPSC_CHR_2_EH,
			pi->mpsc_base + MPSC_CHR_2);
		/* Erratum prevents reading CHR_2 so just delay for a while */
		FUNC2(100);
	} else {
		FUNC3(FUNC1(pi->mpsc_base + MPSC_CHR_2) | MPSC_CHR_2_EH,
				pi->mpsc_base + MPSC_CHR_2);

		while (FUNC1(pi->mpsc_base + MPSC_CHR_2) & MPSC_CHR_2_EH)
			FUNC2(10);
	}
}