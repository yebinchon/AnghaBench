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
 int IPMI_SET_TIMEOUT_FORCE_HB ; 
 int IPMI_SET_TIMEOUT_HB_IF_NECESSARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_timeout_lock ; 
 int /*<<< orphan*/  set_timeout_recv_msg ; 
 int /*<<< orphan*/  set_timeout_smi_msg ; 
 int /*<<< orphan*/  set_timeout_tofree ; 
 int /*<<< orphan*/  set_timeout_wait ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(int do_heartbeat)
{
	int send_heartbeat_now;
	int rv;


	/* We can only send one of these at a time. */
	FUNC3(&set_timeout_lock);

	FUNC0(&set_timeout_tofree, 2);

	rv = FUNC1(&set_timeout_smi_msg,
				&set_timeout_recv_msg,
				&send_heartbeat_now);
	if (rv) {
		FUNC4(&set_timeout_lock);
		goto out;
	}

	FUNC5(&set_timeout_wait);

	FUNC4(&set_timeout_lock);

	if ((do_heartbeat == IPMI_SET_TIMEOUT_FORCE_HB)
	    || ((send_heartbeat_now)
		&& (do_heartbeat == IPMI_SET_TIMEOUT_HB_IF_NECESSARY)))
		rv = FUNC2();

out:
	return rv;
}