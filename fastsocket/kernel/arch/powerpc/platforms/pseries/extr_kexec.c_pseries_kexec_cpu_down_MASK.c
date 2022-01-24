#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dtl_enable_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_SPLPAR ; 
 unsigned long FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC11(int crash_shutdown, int secondary)
{
	/* Don't risk a hypervisor call if we're crashing */
	if (FUNC1(FW_FEATURE_SPLPAR) && !crash_shutdown) {
		unsigned long addr;
		int ret;

		if (FUNC2()->dtl_enable_mask) {
			ret = FUNC8(FUNC4());
			if (ret) {
				FUNC5("WARNING: DTL deregistration for cpu "
				       "%d (hw %d) failed with %d\n",
				       FUNC7(),
				       FUNC4(), ret);
			}
		}

		addr = FUNC0(FUNC3());
		if (FUNC9(FUNC4(), addr))
			FUNC6("SLB shadow buffer deregistration of "
			       "cpu %u (hw_cpu_id %d) failed\n",
			       FUNC7(),
			       FUNC4());

		addr = FUNC0(FUNC2());
		if (FUNC10(FUNC4(), addr)) {
			FUNC6("VPA deregistration of cpu %u (hw_cpu_id %d) "
					"failed\n", FUNC7(),
					FUNC4());
		}
	}
}