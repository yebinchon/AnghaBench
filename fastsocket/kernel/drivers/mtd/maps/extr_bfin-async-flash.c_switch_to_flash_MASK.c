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
struct async_state {int /*<<< orphan*/  flash_ambctl1; int /*<<< orphan*/  flash_ambctl0; int /*<<< orphan*/  save_ambctl1; int /*<<< orphan*/  save_ambctl0; int /*<<< orphan*/  enet_flash_pin; int /*<<< orphan*/  irq_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct async_state *state)
{
	FUNC6(state->irq_flags);

	FUNC5(state->enet_flash_pin, 0);

	state->save_ambctl0 = FUNC1();
	state->save_ambctl1 = FUNC2();
	FUNC3(state->flash_ambctl0);
	FUNC4(state->flash_ambctl1);
	FUNC0();
}