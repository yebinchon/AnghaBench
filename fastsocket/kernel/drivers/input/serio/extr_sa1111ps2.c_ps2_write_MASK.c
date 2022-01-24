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
struct serio {struct ps2if* port_data; } ;
struct ps2if {int head; int tail; unsigned char* buf; int /*<<< orphan*/  lock; TYPE_1__* dev; scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 int PS2STAT_TXE ; 
 scalar_t__ SA1111_PS2DATA ; 
 scalar_t__ SA1111_PS2STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct serio *io, unsigned char val)
{
	struct ps2if *ps2if = io->port_data;
	unsigned long flags;
	unsigned int head;

	FUNC3(&ps2if->lock, flags);

	/*
	 * If the TX register is empty, we can go straight out.
	 */
	if (FUNC1(ps2if->base + SA1111_PS2STAT) & PS2STAT_TXE) {
		FUNC2(val, ps2if->base + SA1111_PS2DATA);
	} else {
		if (ps2if->head == ps2if->tail)
			FUNC0(ps2if->dev->irq[1]);
		head = (ps2if->head + 1) & (sizeof(ps2if->buf) - 1);
		if (head != ps2if->tail) {
			ps2if->buf[ps2if->head] = val;
			ps2if->head = head;
		}
	}

	FUNC4(&ps2if->lock, flags);
	return 0;
}