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
typedef  int /*<<< orphan*/  u16 ;
struct egpio_info {int irq_start; int /*<<< orphan*/  irqs_enabled; int /*<<< orphan*/  ack_register; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct egpio_info*) ; 
 struct egpio_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct egpio_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct device *dev)
{
	struct egpio_info *ei = FUNC1(dev);

	/* Read current pins. */
	u16 readval = FUNC2(ei, ei->ack_register);
	/* Ack/unmask interrupts. */
	FUNC0(ei);
	/* Return first set pin. */
	readval &= ei->irqs_enabled;
	return ei->irq_start + FUNC3(readval) - 1;
}