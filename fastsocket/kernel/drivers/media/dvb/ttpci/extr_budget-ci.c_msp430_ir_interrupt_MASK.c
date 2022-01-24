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
typedef  int u32 ;
struct rc_dev {int dummy; } ;
struct TYPE_2__ {int have_command; int ir_key; int rc5_device; struct rc_dev* dev; } ;
struct budget_ci {TYPE_1__ ir; int /*<<< orphan*/  budget; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBIADDR_IR ; 
 int /*<<< orphan*/  DEBINOSWAP ; 
 int IR_DEVICE_ANY ; 
 scalar_t__ ir_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rc_dev*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct budget_ci *budget_ci = (struct budget_ci *) data;
	struct rc_dev *dev = budget_ci->ir.dev;
	u32 command = FUNC2(&budget_ci->budget, DEBINOSWAP, DEBIADDR_IR, 2, 1, 0) >> 8;

	/*
	 * The msp430 chip can generate two different bytes, command and device
	 *
	 * type1: X1CCCCCC, C = command bits (0 - 63)
	 * type2: X0TDDDDD, D = device bits (0 - 31), T = RC5 toggle bit
	 *
	 * Each signal from the remote control can generate one or more command
	 * bytes and one or more device bytes. For the repeated bytes, the
	 * highest bit (X) is set. The first command byte is always generated
	 * before the first device byte. Other than that, no specific order
	 * seems to apply. To make life interesting, bytes can also be lost.
	 *
	 * Only when we have a command and device byte, a keypress is
	 * generated.
	 */

	if (ir_debug)
		FUNC0("budget_ci: received byte 0x%02x\n", command);

	/* Remove repeat bit, we use every command */
	command = command & 0x7f;

	/* Is this a RC5 command byte? */
	if (command & 0x40) {
		budget_ci->ir.have_command = true;
		budget_ci->ir.ir_key = command & 0x3f;
		return;
	}

	/* It's a RC5 device byte */
	if (!budget_ci->ir.have_command)
		return;
	budget_ci->ir.have_command = false;

	/* FIXME: We should generate complete scancodes with device info */
	if (budget_ci->ir.rc5_device != IR_DEVICE_ANY &&
	    budget_ci->ir.rc5_device != (command & 0x1f))
		return;

	FUNC1(dev, budget_ci->ir.ir_key, (command & 0x20) ? 1 : 0);
}