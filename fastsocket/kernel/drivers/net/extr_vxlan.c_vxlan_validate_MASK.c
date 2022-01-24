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
struct nlattr {int dummy; } ;
struct ifla_vxlan_port_range {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ ETH_ALEN ; 
 size_t IFLA_ADDRESS ; 
 size_t IFLA_VXLAN_ID ; 
 size_t IFLA_VXLAN_PORT_RANGE ; 
 scalar_t__ VXLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ifla_vxlan_port_range*) ; 
 struct ifla_vxlan_port_range* FUNC1 (struct nlattr*) ; 
 scalar_t__ FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct nlattr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(struct nlattr *tb[], struct nlattr *data[])
{
	if (tb[IFLA_ADDRESS]) {
		if (FUNC3(tb[IFLA_ADDRESS]) != ETH_ALEN) {
			FUNC5("invalid link address (not ethernet)\n");
			return -EINVAL;
		}

		if (!FUNC0(FUNC1(tb[IFLA_ADDRESS]))) {
			FUNC5("invalid all zero ethernet address\n");
			return -EADDRNOTAVAIL;
		}
	}

	if (!data)
		return -EINVAL;

	if (data[IFLA_VXLAN_ID]) {
		__u32 id = FUNC2(data[IFLA_VXLAN_ID]);
		if (id >= VXLAN_VID_MASK)
			return -ERANGE;
	}

	if (data[IFLA_VXLAN_PORT_RANGE]) {
		const struct ifla_vxlan_port_range *p
			= FUNC1(data[IFLA_VXLAN_PORT_RANGE]);

		if (FUNC4(p->high) < FUNC4(p->low)) {
			FUNC5("port range %u .. %u not valid\n",
				 FUNC4(p->low), FUNC4(p->high));
			return -EINVAL;
		}
	}

	return 0;
}