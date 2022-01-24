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
struct sunqec {struct sunqe** qes; scalar_t__ gregs; } ;
struct sunqe {int /*<<< orphan*/  lock; scalar_t__ qcregs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ CREG_STAT ; 
 int CREG_STAT_ERRORS ; 
 int CREG_STAT_RXIRQ ; 
 int CREG_STAT_TXIRQ ; 
 scalar_t__ CREG_TIMASK ; 
 scalar_t__ GLOB_STAT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (struct sunqe*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sunqe*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sunqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct sunqe*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct sunqec *qecp = dev_id;
	u32 qec_status;
	int channel = 0;

	/* Latch the status now. */
	qec_status = FUNC6(qecp->gregs + GLOB_STAT);
	while (channel < 4) {
		if (qec_status & 0xf) {
			struct sunqe *qep = qecp->qes[channel];
			u32 qe_status;

			qe_status = FUNC6(qep->qcregs + CREG_STAT);
			if (qe_status & CREG_STAT_ERRORS) {
				if (FUNC3(qep, qe_status))
					goto next;
			}
			if (qe_status & CREG_STAT_RXIRQ)
				FUNC4(qep);
			if (FUNC1(qep->dev) &&
			    (qe_status & CREG_STAT_TXIRQ)) {
				FUNC8(&qep->lock);
				FUNC5(qep);
				if (FUNC0(qep) > 0) {
					/* Wake net queue and return to
					 * lazy tx reclaim.
					 */
					FUNC2(qep->dev);
					FUNC7(1, qep->qcregs + CREG_TIMASK);
				}
				FUNC9(&qep->lock);
			}
	next:
			;
		}
		qec_status >>= 4;
		channel++;
	}

	return IRQ_HANDLED;
}