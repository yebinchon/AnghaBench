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
typedef  int u8 ;
struct TYPE_2__ {int idle; int donate_dedicated_cpu; int /*<<< orphan*/  shared_proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CPU_STATE_INACTIVE ; 
 scalar_t__ CPU_STATE_OFFLINE ; 
 scalar_t__ CPU_STATE_ONLINE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* FUNC4 () ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,scalar_t__) ; 
 unsigned int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static void FUNC17(void)
{
	unsigned int cpu = FUNC13();
	unsigned int hwcpu = FUNC7();
	u8 cede_latency_hint = 0;

	FUNC9();
	FUNC8();
	FUNC16();

	if (FUNC5(cpu) == CPU_STATE_INACTIVE) {
		FUNC12(cpu, CPU_STATE_INACTIVE);
		FUNC10();

		cede_latency_hint = 2;

		FUNC4()->idle = 1;
		if (!FUNC4()->shared_proc)
			FUNC4()->donate_dedicated_cpu = 1;

		while (FUNC5(cpu) == CPU_STATE_INACTIVE) {
			FUNC3(cede_latency_hint);
		}

		if (!FUNC4()->shared_proc)
			FUNC4()->donate_dedicated_cpu = 0;
		FUNC4()->idle = 0;

		if (FUNC5(cpu) == CPU_STATE_ONLINE) {
			FUNC15(hwcpu, FUNC2(FUNC6()));

			/*
			 * Call to start_secondary_resume() will not return.
			 * Kernel stack will be reset and start_secondary()
			 * will be called to continue the online operation.
			 */
			FUNC14();
		}
	}

	/* Requested state is CPU_STATE_OFFLINE at this point */
	FUNC1(FUNC5(cpu) != CPU_STATE_OFFLINE);

	FUNC12(cpu, CPU_STATE_OFFLINE);
	FUNC15(hwcpu, FUNC2(FUNC6()));
	FUNC11();

	/* Should never get here... */
	FUNC0();
	for(;;);
}