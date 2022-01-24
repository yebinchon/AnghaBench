#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kernel_ipmi_msg {int dummy; } ;
struct ipmi_addr {int dummy; } ;
typedef  int /*<<< orphan*/  ipmi_user_t ;
struct TYPE_4__ {int* data; } ;
struct TYPE_5__ {TYPE_1__ msg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  dummy_count ; 
 TYPE_2__ halt_recv_msg ; 
 int /*<<< orphan*/  halt_smi_msg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ipmi_addr*,int /*<<< orphan*/ ,struct kernel_ipmi_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(ipmi_user_t            user,
				   struct ipmi_addr       *addr,
				   struct kernel_ipmi_msg *send_msg)
{
	int rv;

	FUNC1(&dummy_count, 2);
	rv = FUNC4(user, addr, 0, send_msg, NULL,
				      &halt_smi_msg, &halt_recv_msg, 0);
	if (rv) {
		FUNC1(&dummy_count, 0);
		return rv;
	}

	/*
	 * Spin until our message is done.
	 */
	while (FUNC0(&dummy_count) > 0) {
		FUNC3(user);
		FUNC2();
	}

	return halt_recv_msg.msg.data[0];
}