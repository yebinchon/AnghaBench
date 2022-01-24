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
struct xpc_partition {scalar_t__ setup_state; int /*<<< orphan*/  references; } ;

/* Variables and functions */
 scalar_t__ XPC_P_SS_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_partition*) ; 

__attribute__((used)) static inline int
FUNC2(struct xpc_partition *part)
{
	int setup;

	FUNC0(&part->references);
	setup = (part->setup_state == XPC_P_SS_SETUP);
	if (!setup)
		FUNC1(part);

	return setup;
}