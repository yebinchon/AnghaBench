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
struct psif {int /*<<< orphan*/  io; TYPE_1__* pdev; } ;
typedef  int irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  OVRUN ; 
 int /*<<< orphan*/  PARITY ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RHR ; 
 int /*<<< orphan*/  RXRDY ; 
 unsigned int SERIO_PARITY ; 
 int /*<<< orphan*/  SR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned long FUNC2 (struct psif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *_ptr)
{
	struct psif *psif = _ptr;
	int retval = IRQ_NONE;
	unsigned int io_flags = 0;
	unsigned long status;

	status = FUNC2(psif, SR);

	if (status & FUNC0(RXRDY)) {
		unsigned char val = (unsigned char) FUNC2(psif, RHR);

		if (status & FUNC0(PARITY))
			io_flags |= SERIO_PARITY;
		if (status & FUNC0(OVRUN))
			FUNC1(&psif->pdev->dev, "overrun read error\n");

		FUNC3(psif->io, val, io_flags);

		retval = IRQ_HANDLED;
	}

	return retval;
}