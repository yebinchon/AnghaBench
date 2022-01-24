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
struct saa7134_dev {struct saa7134_card_ir* remote; } ;
struct saa7134_card_ir {int mask_keydown; int active; int /*<<< orphan*/  timer; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IR_PULSE ; 
 int /*<<< orphan*/  IR_SPACE ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPMODE3 ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPRESCAN ; 
 int SAA7134_GPIO_GPSTATUS0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct saa7134_dev *dev)
{
	struct saa7134_card_ir *ir = dev->remote;
	unsigned long timeout;
	int space;

	/* Generate initial event */
	FUNC3(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
	FUNC5(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
	space = FUNC4(SAA7134_GPIO_GPSTATUS0 >> 2) & ir->mask_keydown;
	FUNC0(dev->remote->dev, space ? IR_SPACE : IR_PULSE);

	/*
	 * Wait 15 ms from the start of the first IR event before processing
	 * the event. This time is enough for NEC protocol. May need adjustments
	 * to work with other protocols.
	 */
	if (!ir->active) {
		timeout = jiffies + FUNC1(15);
		FUNC2(&ir->timer, timeout);
		ir->active = true;
	}

	return 1;
}