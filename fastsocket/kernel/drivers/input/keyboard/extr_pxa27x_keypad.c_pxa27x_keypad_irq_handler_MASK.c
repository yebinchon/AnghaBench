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
struct pxa27x_keypad {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KPC ; 
 unsigned long KPC_DI ; 
 unsigned long KPC_MI ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa27x_keypad*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa27x_keypad*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct pxa27x_keypad *keypad = dev_id;
	unsigned long kpc = FUNC0(KPC);

	if (kpc & KPC_DI)
		FUNC1(keypad);

	if (kpc & KPC_MI)
		FUNC2(keypad);

	return IRQ_HANDLED;
}