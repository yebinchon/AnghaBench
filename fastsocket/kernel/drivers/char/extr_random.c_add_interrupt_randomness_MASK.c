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
struct timer_rand_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_rand_state*,int) ; 
 struct timer_rand_state* FUNC2 (int) ; 

void FUNC3(int irq)
{
	struct timer_rand_state *state;

	state = FUNC2(irq);

	if (state == NULL)
		return;

	FUNC0("irq event %d\n", irq);
	FUNC1(state, 0x100 + irq);
}