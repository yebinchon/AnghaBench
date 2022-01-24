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
struct async_state {int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  enet_flash_pin; int /*<<< orphan*/  save_ambctl1; int /*<<< orphan*/  save_ambctl0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct async_state *state)
{
	FUNC1(state->save_ambctl0);
	FUNC2(state->save_ambctl1);
	FUNC0();

	FUNC3(state->enet_flash_pin, 1);

	FUNC4(state->irq_flags);
}