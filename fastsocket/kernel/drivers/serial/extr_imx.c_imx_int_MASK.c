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
struct TYPE_2__ {scalar_t__ membase; } ;
struct imx_port {TYPE_1__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ UCR1 ; 
 unsigned int UCR1_TXMPTYEN ; 
 scalar_t__ USR1 ; 
 unsigned int USR1_RRDY ; 
 unsigned int USR1_RTSD ; 
 unsigned int USR1_TRDY ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 unsigned int FUNC3 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct imx_port *sport = dev_id;
	unsigned int sts;

	sts = FUNC3(sport->port.membase + USR1);

	if (sts & USR1_RRDY)
		FUNC1(irq, dev_id);

	if (sts & USR1_TRDY &&
			FUNC3(sport->port.membase + UCR1) & UCR1_TXMPTYEN)
		FUNC2(irq, dev_id);

	if (sts & USR1_RTSD)
		FUNC0(irq, dev_id);

	return IRQ_HANDLED;
}