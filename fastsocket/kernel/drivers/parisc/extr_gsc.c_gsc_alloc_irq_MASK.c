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
struct gsc_irq {int irq; int /*<<< orphan*/  txn_data; int /*<<< orphan*/  txn_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSC_EIM_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct gsc_irq *i)
{
	int irq = FUNC3(GSC_EIM_WIDTH);
	if (irq < 0) {
		FUNC0("cannot get irq\n");
		return irq;
	}

	i->txn_addr = FUNC1(irq);
	i->txn_data = FUNC2(irq);
	i->irq = irq;

	return irq;
}