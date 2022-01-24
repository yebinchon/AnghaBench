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
struct TYPE_2__ {int /*<<< orphan*/  (* send_IPI_allbutself ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  REBOOT_VECTOR ; 
 unsigned long USEC_PER_SEC ; 
 TYPE_1__* apic ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 () ; 
 scalar_t__ reboot_force ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(int wait)
{
	unsigned long flags;
	unsigned long timeout;

	if (reboot_force)
		return;

	/*
	 * Use an own vector here because smp_call_function
	 * does lots of things not suitable in a panic situation.
	 * On most systems we could also use an NMI here,
	 * but there are a few systems around where NMI
	 * is problematic so stay with an non NMI for now
	 * (this implies we cannot stop CPUs spinning with irq off
	 * currently)
	 */
	if (FUNC3() > 1) {
		apic->send_IPI_allbutself(REBOOT_VECTOR);

		/*
		 * Don't wait longer than a second if the caller
		 * didn't ask us to wait.
		 */
		timeout = USEC_PER_SEC;
		while (FUNC3() > 1 && (wait || timeout--))
			FUNC5(1);
	}

	FUNC2(flags);
	FUNC0();
	FUNC1(flags);
}