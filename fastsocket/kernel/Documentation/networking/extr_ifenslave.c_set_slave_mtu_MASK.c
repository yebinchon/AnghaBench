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
struct ifreq {int ifr_mtu; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCSIFMTU ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  saved_errno ; 
 int /*<<< orphan*/  skfd ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(char *slave_ifname, int mtu)
{
	struct ifreq ifr;
	int res = 0;

	ifr.ifr_mtu = mtu;
	FUNC2(ifr.ifr_name, slave_ifname, IFNAMSIZ);

	res = FUNC0(skfd, SIOCSIFMTU, &ifr);
	if (res < 0) {
		saved_errno = errno;
		FUNC3("Slave '%s': Error: SIOCSIFMTU failed: %s\n",
			slave_ifname, FUNC1(saved_errno));
	} else {
		FUNC3("Slave '%s': MTU set to %d.\n", slave_ifname, mtu);
	}

	return res;
}