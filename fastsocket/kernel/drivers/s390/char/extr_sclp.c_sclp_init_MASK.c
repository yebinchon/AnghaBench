#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ext_int_info_hwc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ sclp_init_state ; 
 scalar_t__ sclp_init_state_initialized ; 
 scalar_t__ sclp_init_state_initializing ; 
 scalar_t__ sclp_init_state_uninitialized ; 
 int /*<<< orphan*/  sclp_interrupt_handler ; 
 int /*<<< orphan*/  sclp_lock ; 
 int /*<<< orphan*/  sclp_reboot_notifier ; 
 int /*<<< orphan*/  sclp_reg_list ; 
 int /*<<< orphan*/  sclp_req_queue ; 
 int /*<<< orphan*/  sclp_request_timer ; 
 TYPE_1__ sclp_state_change_event ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(void)
{
	unsigned long flags;
	int rc = 0;

	FUNC8(&sclp_lock, flags);
	/* Check for previous or running initialization */
	if (sclp_init_state != sclp_init_state_uninitialized)
		goto fail_unlock;
	sclp_init_state = sclp_init_state_initializing;
	/* Set up variables */
	FUNC0(&sclp_req_queue);
	FUNC0(&sclp_reg_list);
	FUNC3(&sclp_state_change_event.list, &sclp_reg_list);
	FUNC2(&sclp_request_timer);
	/* Check interface */
	FUNC9(&sclp_lock, flags);
	rc = FUNC6();
	FUNC8(&sclp_lock, flags);
	if (rc)
		goto fail_init_state_uninitialized;
	/* Register reboot handler */
	rc = FUNC5(&sclp_reboot_notifier);
	if (rc)
		goto fail_init_state_uninitialized;
	/* Register interrupt handler */
	rc = FUNC4(0x2401, sclp_interrupt_handler,
					       &ext_int_info_hwc);
	if (rc)
		goto fail_unregister_reboot_notifier;
	sclp_init_state = sclp_init_state_initialized;
	FUNC9(&sclp_lock, flags);
	/* Enable service-signal external interruption - needs to happen with
	 * IRQs enabled. */
	FUNC1(0, 9);
	FUNC7(1);
	return 0;

fail_unregister_reboot_notifier:
	FUNC10(&sclp_reboot_notifier);
fail_init_state_uninitialized:
	sclp_init_state = sclp_init_state_uninitialized;
fail_unlock:
	FUNC9(&sclp_lock, flags);
	return rc;
}