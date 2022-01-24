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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  qeth_l3_ip6_notifier ; 
 int /*<<< orphan*/  qeth_l3_ip_notifier ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void)
{
	int rc;

	FUNC0(TRACE, 5, "regnotif");
	rc = FUNC3(&qeth_l3_ip_notifier);
	if (rc)
		return rc;
#ifdef CONFIG_QETH_IPV6
	rc = register_inet6addr_notifier(&qeth_l3_ip6_notifier);
	if (rc) {
		unregister_inetaddr_notifier(&qeth_l3_ip_notifier);
		return rc;
	}
#else
	FUNC1("There is no IPv6 support for the layer 3 discipline\n");
#endif
	return 0;
}