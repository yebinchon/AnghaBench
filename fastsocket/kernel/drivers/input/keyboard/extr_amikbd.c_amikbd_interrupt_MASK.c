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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {unsigned char sdr; int cra; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  amikbd_dev ; 
 int /*<<< orphan*/ * amikbd_messages ; 
 TYPE_1__ ciaa ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dummy)
{
	unsigned char scancode, down;

	scancode = ~ciaa.sdr;		/* get and invert scancode (keyboard is active low) */
	ciaa.cra |= 0x40;		/* switch SP pin to output for handshake */
	FUNC3(85);			/* wait until 85 us have expired */
	ciaa.cra &= ~0x40;		/* switch CIA serial port to input mode */

	down = !(scancode & 1);		/* lowest bit is release bit */
	scancode >>= 1;

	if (scancode < 0x78) {		/* scancodes < 0x78 are keys */
		if (scancode == 98) {	/* CapsLock is a toggle switch key on Amiga */
			FUNC0(amikbd_dev, scancode, 1);
			FUNC0(amikbd_dev, scancode, 0);
		} else {
			FUNC0(amikbd_dev, scancode, down);
		}

		FUNC1(amikbd_dev);
	} else				/* scancodes >= 0x78 are error codes */
		FUNC2(amikbd_messages[scancode - 0x78]);

	return IRQ_HANDLED;
}