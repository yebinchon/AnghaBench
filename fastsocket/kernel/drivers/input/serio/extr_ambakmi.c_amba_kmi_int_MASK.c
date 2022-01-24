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
struct amba_kmi_port {int /*<<< orphan*/  io; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  KMIDATA ; 
 int /*<<< orphan*/  KMIIR ; 
 unsigned int KMIIR_RXINTR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct amba_kmi_port *kmi = dev_id;
	unsigned int status = FUNC0(KMIIR);
	int handled = IRQ_NONE;

	while (status & KMIIR_RXINTR) {
		FUNC1(kmi->io, FUNC0(KMIDATA), 0);
		status = FUNC0(KMIIR);
		handled = IRQ_HANDLED;
	}

	return handled;
}