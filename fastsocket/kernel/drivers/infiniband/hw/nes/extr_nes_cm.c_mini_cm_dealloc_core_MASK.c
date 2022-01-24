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
struct nes_cm_core {int /*<<< orphan*/  disconn_wq; int /*<<< orphan*/  event_wq; int /*<<< orphan*/  tcp_timer; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nes_cm_core*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct nes_cm_core *cm_core)
{
	FUNC4(NES_DBG_CM, "De-Alloc CM Core (%p)\n", cm_core);

	if (!cm_core)
		return -EINVAL;

	FUNC0();

	if (FUNC5(&cm_core->tcp_timer))
		FUNC1(&cm_core->tcp_timer);

	FUNC2(cm_core->event_wq);
	FUNC2(cm_core->disconn_wq);
	FUNC4(NES_DBG_CM, "\n");
	FUNC3(cm_core);

	return 0;
}