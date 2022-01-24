#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ifreq {int /*<<< orphan*/  ifr_slave; int /*<<< orphan*/  ifr_name; } ;
struct TYPE_12__ {int ifr_flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  ifr_hwaddr; } ;
struct TYPE_10__ {scalar_t__ ifr_mtu; } ;
struct TYPE_9__ {int ifr_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  ifr_hwaddr; } ;
struct TYPE_7__ {scalar_t__ ifr_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOND_ENSLAVE_OLD ; 
 int IFF_SLAVE ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCBONDENSLAVE ; 
 int abi_ver ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int hwaddr_set ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 TYPE_6__ master_flags ; 
 TYPE_5__ master_hwaddr ; 
 TYPE_4__ master_mtu ; 
 int /*<<< orphan*/  saved_errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*,int) ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  skfd ; 
 TYPE_3__ slave_flags ; 
 TYPE_2__ slave_hwaddr ; 
 TYPE_1__ slave_mtu ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(char *master_ifname, char *slave_ifname)
{
	struct ifreq ifr;
	int res = 0;

	if (slave_flags.ifr_flags & IFF_SLAVE) {
		FUNC1(stderr,
			"Illegal operation: The specified slave interface "
			"'%s' is already a slave\n",
			slave_ifname);
		return 1;
	}

	res = FUNC4(slave_ifname, slave_flags.ifr_flags);
	if (res) {
		FUNC1(stderr,
			"Slave '%s': Error: bring interface down failed\n",
			slave_ifname);
		return res;
	}

	if (abi_ver < 2) {
		/* Older bonding versions would panic if the slave has no IP
		 * address, so get the IP setting from the master.
		 */
		FUNC3(master_ifname, slave_ifname);
	} else {
		res = FUNC0(slave_ifname);
		if (res) {
			FUNC1(stderr,
				"Slave '%s': Error: clear address failed\n",
				slave_ifname);
			return res;
		}
	}

	if (master_mtu.ifr_mtu != slave_mtu.ifr_mtu) {
		res = FUNC8(slave_ifname, master_mtu.ifr_mtu);
		if (res) {
			FUNC1(stderr,
				"Slave '%s': Error: set MTU failed\n",
				slave_ifname);
			return res;
		}
	}

	if (hwaddr_set) {
		/* Master already has an hwaddr
		 * so set it's hwaddr to the slave
		 */
		if (abi_ver < 1) {
			/* The driver is using an old ABI, so
			 * the application sets the slave's
			 * hwaddr
			 */
			res = FUNC7(slave_ifname,
					       &(master_hwaddr.ifr_hwaddr));
			if (res) {
				FUNC1(stderr,
					"Slave '%s': Error: set hw address "
					"failed\n",
					slave_ifname);
				goto undo_mtu;
			}

			/* For old ABI the application needs to bring the
			 * slave back up
			 */
			res = FUNC5(slave_ifname, slave_flags.ifr_flags);
			if (res) {
				FUNC1(stderr,
					"Slave '%s': Error: bring interface "
					"down failed\n",
					slave_ifname);
				goto undo_slave_mac;
			}
		}
		/* The driver is using a new ABI,
		 * so the driver takes care of setting
		 * the slave's hwaddr and bringing
		 * it up again
		 */
	} else {
		/* No hwaddr for master yet, so
		 * set the slave's hwaddr to it
		 */
		if (abi_ver < 1) {
			/* For old ABI, the master needs to be
			 * down before setting it's hwaddr
			 */
			res = FUNC4(master_ifname, master_flags.ifr_flags);
			if (res) {
				FUNC1(stderr,
					"Master '%s': Error: bring interface "
					"down failed\n",
					master_ifname);
				goto undo_mtu;
			}
		}

		res = FUNC6(master_ifname,
					&(slave_hwaddr.ifr_hwaddr));
		if (res) {
			FUNC1(stderr,
				"Master '%s': Error: set hw address "
				"failed\n",
				master_ifname);
			goto undo_mtu;
		}

		if (abi_ver < 1) {
			/* For old ABI, bring the master
			 * back up
			 */
			res = FUNC5(master_ifname, master_flags.ifr_flags);
			if (res) {
				FUNC1(stderr,
					"Master '%s': Error: bring interface "
					"up failed\n",
					master_ifname);
				goto undo_master_mac;
			}
		}

		hwaddr_set = 1;
	}

	/* Do the real thing */
	FUNC10(ifr.ifr_name, master_ifname, IFNAMSIZ);
	FUNC10(ifr.ifr_slave, slave_ifname, IFNAMSIZ);
	if ((FUNC2(skfd, SIOCBONDENSLAVE, &ifr) < 0) &&
	    (FUNC2(skfd, BOND_ENSLAVE_OLD, &ifr) < 0)) {
		saved_errno = errno;
		FUNC11("Master '%s': Error: SIOCBONDENSLAVE failed: %s\n",
			master_ifname, FUNC9(saved_errno));
		res = 1;
	}

	if (res) {
		goto undo_master_mac;
	}

	return 0;

/* rollback (best effort) */
undo_master_mac:
	FUNC6(master_ifname, &(master_hwaddr.ifr_hwaddr));
	hwaddr_set = 0;
	goto undo_mtu;
undo_slave_mac:
	FUNC7(slave_ifname, &(slave_hwaddr.ifr_hwaddr));
undo_mtu:
	FUNC8(slave_ifname, slave_mtu.ifr_mtu);
	return res;
}