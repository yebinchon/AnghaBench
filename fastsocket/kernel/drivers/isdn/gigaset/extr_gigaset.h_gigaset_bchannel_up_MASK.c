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
struct bc_state {int /*<<< orphan*/  cs; int /*<<< orphan*/  at_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_CMD ; 
 int /*<<< orphan*/  EV_BC_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct bc_state *bcs)
{
	FUNC1(bcs->cs, &bcs->at_state, EV_BC_OPEN, NULL, 0, NULL);

	FUNC0(DEBUG_CMD, "scheduling BC_OPEN");
	FUNC2(bcs->cs);
}