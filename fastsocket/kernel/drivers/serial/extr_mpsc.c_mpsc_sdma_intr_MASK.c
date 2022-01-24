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
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_2__ {int /*<<< orphan*/  line; int /*<<< orphan*/  lock; } ;
struct mpsc_port_info {TYPE_1__ port; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 scalar_t__ FUNC0 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpsc_port_info*) ; 
 scalar_t__ FUNC2 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct mpsc_port_info *pi = dev_id;
	ulong iflags;
	int rc = IRQ_NONE;

	FUNC3("mpsc_sdma_intr[%d]: SDMA Interrupt Received\n",pi->port.line);

	FUNC4(&pi->port.lock, iflags);
	FUNC1(pi);
	if (FUNC0(pi))
		rc = IRQ_HANDLED;
	if (FUNC2(pi))
		rc = IRQ_HANDLED;
	FUNC5(&pi->port.lock, iflags);

	FUNC3("mpsc_sdma_intr[%d]: SDMA Interrupt Handled\n", pi->port.line);
	return rc;
}