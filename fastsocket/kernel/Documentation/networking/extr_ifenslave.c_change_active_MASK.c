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
struct ifreq {int /*<<< orphan*/  ifr_slave; int /*<<< orphan*/  ifr_name; } ;
struct TYPE_2__ {int ifr_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOND_CHANGE_ACTIVE_OLD ; 
 int IFF_SLAVE ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCBONDCHANGEACTIVE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  saved_errno ; 
 int /*<<< orphan*/  skfd ; 
 TYPE_1__ slave_flags ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(char *master_ifname, char *slave_ifname)
{
	struct ifreq ifr;
	int res = 0;

	if (!(slave_flags.ifr_flags & IFF_SLAVE)) {
		FUNC0(stderr,
			"Illegal operation: The specified slave interface "
			"'%s' is not a slave\n",
			slave_ifname);
		return 1;
	}

	FUNC3(ifr.ifr_name, master_ifname, IFNAMSIZ);
	FUNC3(ifr.ifr_slave, slave_ifname, IFNAMSIZ);
	if ((FUNC1(skfd, SIOCBONDCHANGEACTIVE, &ifr) < 0) &&
	    (FUNC1(skfd, BOND_CHANGE_ACTIVE_OLD, &ifr) < 0)) {
		saved_errno = errno;
		FUNC4("Master '%s': Error: SIOCBONDCHANGEACTIVE failed: "
			"%s\n",
			master_ifname, FUNC2(saved_errno));
		res = 1;
	}

	return res;
}