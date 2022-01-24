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
struct sockaddr {scalar_t__ sa_data; } ;
struct ifreq {int /*<<< orphan*/  ifr_hwaddr; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ EINVAL ; 
 scalar_t__ EOPNOTSUPP ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCSIFHWADDR ; 
 scalar_t__ errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sockaddr*,int) ; 
 scalar_t__ saved_errno ; 
 int /*<<< orphan*/  skfd ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(char *slave_ifname, struct sockaddr *hwaddr)
{
	unsigned char *addr = (unsigned char *)hwaddr->sa_data;
	struct ifreq ifr;
	int res = 0;

	FUNC3(ifr.ifr_name, slave_ifname, IFNAMSIZ);
	FUNC1(&(ifr.ifr_hwaddr), hwaddr, sizeof(struct sockaddr));
	res = FUNC0(skfd, SIOCSIFHWADDR, &ifr);
	if (res < 0) {
		saved_errno = errno;

		FUNC4("Slave '%s': Error: SIOCSIFHWADDR failed: %s\n",
			slave_ifname, FUNC2(saved_errno));

		if (saved_errno == EBUSY) {
			FUNC4("  The device is busy: it must be idle "
				"before running this command.\n");
		} else if (saved_errno == EOPNOTSUPP) {
			FUNC4("  The device does not support setting "
				"the MAC address.\n"
				"  Your kernel likely does not support slave "
				"devices.\n");
		} else if (saved_errno == EINVAL) {
			FUNC4("  The device's address type does not match "
				"the master's address type.\n");
		}
		return res;
	} else {
		FUNC4("Slave '%s': hardware address set to "
			"%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x.\n",
			slave_ifname, addr[0], addr[1], addr[2],
			addr[3], addr[4], addr[5]);
	}

	return res;
}