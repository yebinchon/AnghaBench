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
struct ifreq {scalar_t__ ifr_data; int /*<<< orphan*/  ifr_name; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  driver; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int BOND_ABI_VERSION ; 
 scalar_t__ EOPNOTSUPP ; 
 int /*<<< orphan*/  ETHTOOL_GDRVINFO ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCETHTOOL ; 
 char* abi_ver ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ saved_errno ; 
 int /*<<< orphan*/  skfd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 

__attribute__((used)) static int FUNC7(char *master_ifname)
{
	struct ifreq ifr;
	struct ethtool_drvinfo info;
	char *endptr;

	FUNC1(&ifr, 0, sizeof(ifr));
	FUNC4(ifr.ifr_name, master_ifname, IFNAMSIZ);
	ifr.ifr_data = (caddr_t)&info;

	info.cmd = ETHTOOL_GDRVINFO;
	FUNC4(info.driver, "ifenslave", 32);
	FUNC2(info.fw_version, 32, "%d", BOND_ABI_VERSION);

	if (FUNC0(skfd, SIOCETHTOOL, &ifr) < 0) {
		if (errno == EOPNOTSUPP) {
			goto out;
		}

		saved_errno = errno;
		FUNC6("Master '%s': Error: get bonding info failed %s\n",
			master_ifname, FUNC3(saved_errno));
		return 1;
	}

	abi_ver = FUNC5(info.fw_version, &endptr, 0);
	if (*endptr) {
                FUNC6("Master '%s': Error: got invalid string as an ABI "
			"version from the bonding module\n",
			master_ifname);
		return 1;
	}

out:
	FUNC6("ABI ver is %d\n", abi_ver);

	return 0;
}