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
struct c2_dev {scalar_t__ hints_read; scalar_t__ regs; int /*<<< orphan*/ * hint_count; } ;

/* Variables and functions */
 scalar_t__ PCI_BAR0_HOST_HINT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct c2_dev*,unsigned int) ; 
 unsigned int FUNC2 (scalar_t__) ; 

void FUNC3(struct c2_dev *c2dev)
{
	unsigned int mq_index;

	while (c2dev->hints_read != FUNC0(*c2dev->hint_count)) {
		mq_index = FUNC2(c2dev->regs + PCI_BAR0_HOST_HINT);
		if (mq_index & 0x80000000) {
			break;
		}

		c2dev->hints_read++;
		FUNC1(c2dev, mq_index);
	}

}