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
struct ps2if {scalar_t__ base; int /*<<< orphan*/  io; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int PS2STAT_RXF ; 
 unsigned int PS2STAT_RXP ; 
 unsigned int PS2STAT_STP ; 
 scalar_t__ SA1111_PS2DATA ; 
 scalar_t__ SA1111_PS2STAT ; 
 unsigned int SERIO_FRAME ; 
 unsigned int SERIO_PARITY ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct ps2if *ps2if = dev_id;
	unsigned int scancode, flag, status;

	status = FUNC1(ps2if->base + SA1111_PS2STAT);
	while (status & PS2STAT_RXF) {
		if (status & PS2STAT_STP)
			FUNC2(PS2STAT_STP, ps2if->base + SA1111_PS2STAT);

		flag = (status & PS2STAT_STP ? SERIO_FRAME : 0) |
		       (status & PS2STAT_RXP ? 0 : SERIO_PARITY);

		scancode = FUNC1(ps2if->base + SA1111_PS2DATA) & 0xff;

		if (FUNC0(scancode) & 1)
			flag ^= SERIO_PARITY;

		FUNC3(ps2if->io, scancode, flag);

		status = FUNC1(ps2if->base + SA1111_PS2STAT);
        }

        return IRQ_HANDLED;
}