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
struct smtc_ipi_q {int /*<<< orphan*/  lock; int /*<<< orphan*/ * head; } ;
struct smtc_ipi {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  selfipis; } ;

/* Variables and functions */
 struct smtc_ipi_q* IPIQ ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 struct smtc_ipi* FUNC1 (struct smtc_ipi_q*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct smtc_ipi*) ; 
 unsigned int FUNC4 () ; 
 TYPE_1__* smtc_cpu_stats ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	unsigned int cpu = FUNC4();

	/*
	 * To the extent that we've ever turned interrupts off,
	 * we may have accumulated deferred IPIs.  This is subtle.
	 * we should be OK:  If we pick up something and dispatch
	 * it here, that's great. If we see nothing, but concurrent
	 * with this operation, another TC sends us an IPI, IXMT
	 * is clear, and we'll handle it as a real pseudo-interrupt
	 * and not a pseudo-pseudo interrupt.  The important thing
	 * is to do the last check for queued message *after* the
	 * re-enabling of interrupts.
	 */
	while (IPIQ[cpu].head != NULL) {
		struct smtc_ipi_q *q = &IPIQ[cpu];
		struct smtc_ipi *pipi;
		unsigned long flags;

		/*
		 * It's just possible we'll come in with interrupts
		 * already enabled.
		 */
		FUNC2(flags);

		FUNC5(&q->lock);
		pipi = FUNC1(q);
		FUNC6(&q->lock);
		/*
		 ** But use a raw restore here to avoid recursion.
		 */
		FUNC0(flags);

		if (pipi) {
			FUNC3(pipi);
			smtc_cpu_stats[cpu].selfipis++;
		}
	}
}