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
struct lguest_ro_state {int /*<<< orphan*/ * guest_idt; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned long const,int /*<<< orphan*/ *) ; 

void FUNC2(struct lguest_ro_state *state,
			       const unsigned long *def)
{
	unsigned int i;

	for (i = 0; i < FUNC0(state->guest_idt); i++)
		FUNC1(&state->guest_idt[i], i, def[i], NULL);
}