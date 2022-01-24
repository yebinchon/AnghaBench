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
 int EINVAL ; 
 scalar_t__ sclp_activation_state ; 
 scalar_t__ sclp_activation_state_activating ; 
 scalar_t__ sclp_activation_state_active ; 
 scalar_t__ sclp_activation_state_inactive ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  sclp_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC3(void)
{
	unsigned long flags;
	int rc;

	FUNC1(&sclp_lock, flags);
	/* Reactivate can only be called when inactive */
	if (sclp_activation_state != sclp_activation_state_inactive) {
		FUNC2(&sclp_lock, flags);
		return -EINVAL;
	}
	sclp_activation_state = sclp_activation_state_activating;
	FUNC2(&sclp_lock, flags);
	rc = FUNC0(1);
	FUNC1(&sclp_lock, flags);
	if (rc == 0)
		sclp_activation_state = sclp_activation_state_active;
	else
		sclp_activation_state = sclp_activation_state_inactive;
	FUNC2(&sclp_lock, flags);
	return rc;
}