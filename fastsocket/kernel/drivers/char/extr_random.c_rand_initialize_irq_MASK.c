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
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct timer_rand_state* FUNC0 (int) ; 
 struct timer_rand_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct timer_rand_state*) ; 

void FUNC3(int irq)
{
	struct timer_rand_state *state;

	state = FUNC0(irq);

	if (state)
		return;

	/*
	 * If kzalloc returns null, we just won't use that entropy
	 * source.
	 */
	state = FUNC1(sizeof(struct timer_rand_state), GFP_KERNEL);
	if (state)
		FUNC2(irq, state);
}