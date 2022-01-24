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
struct TYPE_3__ {int /*<<< orphan*/  brk; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  read_status_mask; TYPE_1__ icount; } ;
struct sa1100_port {TYPE_2__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SA1100_ISR_PASS_LIMIT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct sa1100_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct sa1100_port*,unsigned int) ; 
 unsigned int UTSR0_RBB ; 
 unsigned int UTSR0_REB ; 
 unsigned int UTSR0_RFS ; 
 unsigned int UTSR0_RID ; 
 unsigned int UTSR0_TFS ; 
 int /*<<< orphan*/  FUNC3 (struct sa1100_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct sa1100_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct sa1100_port *sport = dev_id;
	unsigned int status, pass_counter = 0;

	FUNC5(&sport->port.lock);
	status = FUNC1(sport);
	status &= FUNC0(sport->port.read_status_mask) | ~UTSR0_TFS;
	do {
		if (status & (UTSR0_RFS | UTSR0_RID)) {
			/* Clear the receiver idle bit, if set */
			if (status & UTSR0_RID)
				FUNC2(sport, UTSR0_RID);
			FUNC3(sport);
		}

		/* Clear the relevant break bits */
		if (status & (UTSR0_RBB | UTSR0_REB))
			FUNC2(sport, status & (UTSR0_RBB | UTSR0_REB));

		if (status & UTSR0_RBB)
			sport->port.icount.brk++;

		if (status & UTSR0_REB)
			FUNC7(&sport->port);

		if (status & UTSR0_TFS)
			FUNC4(sport);
		if (pass_counter++ > SA1100_ISR_PASS_LIMIT)
			break;
		status = FUNC1(sport);
		status &= FUNC0(sport->port.read_status_mask) |
			  ~UTSR0_TFS;
	} while (status & (UTSR0_TFS | UTSR0_RFS | UTSR0_RID));
	FUNC6(&sport->port.lock);

	return IRQ_HANDLED;
}