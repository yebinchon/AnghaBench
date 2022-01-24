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

/* Variables and functions */
 scalar_t__ EDAC_OPSTATE_POLL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  edac_handlers ; 
 scalar_t__ edac_op_state ; 

int FUNC1(void)
{
	if (edac_op_state == EDAC_OPSTATE_POLL)
		return 0;

	return FUNC0(&edac_handlers);
}