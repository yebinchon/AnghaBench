#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int sa_family_t ;
struct TYPE_6__ {int ifr_flags; } ;
struct TYPE_4__ {int sa_family; scalar_t__ sa_data; } ;
struct TYPE_5__ {TYPE_1__ ifr_hwaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EOF ; 
 int IFF_MASTER ; 
 int IFF_UP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* help_msg ; 
 int hwaddr_set ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  longopts ; 
 TYPE_3__ master_flags ; 
 TYPE_2__ master_hwaddr ; 
 int /*<<< orphan*/  master_ifra ; 
 scalar_t__ opt_V ; 
 scalar_t__ opt_a ; 
 scalar_t__ opt_c ; 
 scalar_t__ opt_d ; 
 int /*<<< orphan*/  opt_f ; 
 scalar_t__ opt_h ; 
 scalar_t__ opt_u ; 
 scalar_t__ opt_v ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (char*,char*) ; 
 scalar_t__ skfd ; 
 int /*<<< orphan*/  slave_ifra ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC13 (int) ; 
 char* usage_msg ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,int) ; 
 char* version ; 

int FUNC15(int argc, char *argv[])
{
	char **spp, *master_ifname, *slave_ifname;
	int c, i, rv;
	int res = 0;
	int exclusive = 0;

	while ((c = FUNC7(argc, argv, "acdfhuvV", longopts, 0)) != EOF) {
		switch (c) {
		case 'a': opt_a++; exclusive++; break;
		case 'c': opt_c++; exclusive++; break;
		case 'd': opt_d++; exclusive++; break;
		case 'f': opt_f++; exclusive++; break;
		case 'h': opt_h++; exclusive++; break;
		case 'u': opt_u++; exclusive++; break;
		case 'v': opt_v++; break;
		case 'V': opt_V++; exclusive++; break;

		case '?':
			FUNC3(stderr, "%s", usage_msg);
			res = 2;
			goto out;
		}
	}

	/* options check */
	if (exclusive > 1) {
		FUNC3(stderr, "%s", usage_msg);
		res = 2;
		goto out;
	}

	if (opt_v || opt_V) {
		FUNC10(version);
		if (opt_V) {
			res = 0;
			goto out;
		}
	}

	if (opt_u) {
		FUNC10(usage_msg);
		res = 0;
		goto out;
	}

	if (opt_h) {
		FUNC10(usage_msg);
		FUNC10(help_msg);
		res = 0;
		goto out;
	}

	/* Open a basic socket */
	if ((skfd = FUNC12(AF_INET, SOCK_DGRAM, 0)) < 0) {
		FUNC9("socket");
		res = 1;
		goto out;
	}

	if (opt_a) {
		if (optind == argc) {
			/* No remaining args */
			/* show all interfaces */
			FUNC8((char *)NULL);
			goto out;
		} else {
			/* Just show usage */
			FUNC3(stderr, "%s", usage_msg);
			res = 2;
			goto out;
		}
	}

	/* Copy the interface name */
	spp = argv + optind;
	master_ifname = *spp++;

	if (master_ifname == NULL) {
		FUNC3(stderr, "%s", usage_msg);
		res = 2;
		goto out;
	}

	/* exchange abi version with bonding module */
	res = FUNC4(master_ifname);
	if (res) {
		FUNC3(stderr,
			"Master '%s': Error: handshake with driver failed. "
			"Aborting\n",
			master_ifname);
		goto out;
	}

	slave_ifname = *spp++;

	if (slave_ifname == NULL) {
		if (opt_d || opt_c) {
			FUNC3(stderr, "%s", usage_msg);
			res = 2;
			goto out;
		}

		/* A single arg means show the
		 * configuration for this interface
		 */
		FUNC8(master_ifname);
		goto out;
	}

	res = FUNC5(master_ifname, master_ifra);
	if (res) {
		/* Probably a good reason not to go on */
		FUNC3(stderr,
			"Master '%s': Error: get settings failed: %s. "
			"Aborting\n",
			master_ifname, FUNC13(res));
		goto out;
	}

	/* check if master is indeed a master;
	 * if not then fail any operation
	 */
	if (!(master_flags.ifr_flags & IFF_MASTER)) {
		FUNC3(stderr,
			"Illegal operation; the specified interface '%s' "
			"is not a master. Aborting\n",
			master_ifname);
		res = 1;
		goto out;
	}

	/* check if master is up; if not then fail any operation */
	if (!(master_flags.ifr_flags & IFF_UP)) {
		FUNC3(stderr,
			"Illegal operation; the specified master interface "
			"'%s' is not up.\n",
			master_ifname);
		res = 1;
		goto out;
	}

	/* Only for enslaving */
	if (!opt_c && !opt_d) {
		sa_family_t master_family = master_hwaddr.ifr_hwaddr.sa_family;
		unsigned char *hwaddr =
			(unsigned char *)master_hwaddr.ifr_hwaddr.sa_data;

		/* The family '1' is ARPHRD_ETHER for ethernet. */
		if (master_family != 1 && !opt_f) {
			FUNC3(stderr,
				"Illegal operation: The specified master "
				"interface '%s' is not ethernet-like.\n "
				"This program is designed to work with "
				"ethernet-like network interfaces.\n "
				"Use the '-f' option to force the "
				"operation.\n",
				master_ifname);
			res = 1;
			goto out;
		}

		/* Check master's hw addr */
		for (i = 0; i < 6; i++) {
			if (hwaddr[i] != 0) {
				hwaddr_set = 1;
				break;
			}
		}

		if (hwaddr_set) {
			FUNC14("current hardware address of master '%s' "
				"is %2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x, "
				"type %d\n",
				master_ifname,
				hwaddr[0], hwaddr[1],
				hwaddr[2], hwaddr[3],
				hwaddr[4], hwaddr[5],
				master_family);
		}
	}

	/* Accepts only one slave */
	if (opt_c) {
		/* change active slave */
		res = FUNC6(slave_ifname);
		if (res) {
			FUNC3(stderr,
				"Slave '%s': Error: get flags failed. "
				"Aborting\n",
				slave_ifname);
			goto out;
		}
		res = FUNC0(master_ifname, slave_ifname);
		if (res) {
			FUNC3(stderr,
				"Master '%s', Slave '%s': Error: "
				"Change active failed\n",
				master_ifname, slave_ifname);
		}
	} else {
		/* Accept multiple slaves */
		do {
			if (opt_d) {
				/* detach a slave interface from the master */
				rv = FUNC6(slave_ifname);
				if (rv) {
					/* Can't work with this slave. */
					/* remember the error and skip it*/
					FUNC3(stderr,
						"Slave '%s': Error: get flags "
						"failed. Skipping\n",
						slave_ifname);
					res = rv;
					continue;
				}
				rv = FUNC11(master_ifname, slave_ifname);
				if (rv) {
					FUNC3(stderr,
						"Master '%s', Slave '%s': Error: "
						"Release failed\n",
						master_ifname, slave_ifname);
					res = rv;
				}
			} else {
				/* attach a slave interface to the master */
				rv = FUNC5(slave_ifname, slave_ifra);
				if (rv) {
					/* Can't work with this slave. */
					/* remember the error and skip it*/
					FUNC3(stderr,
						"Slave '%s': Error: get "
						"settings failed: %s. "
						"Skipping\n",
						slave_ifname, FUNC13(rv));
					res = rv;
					continue;
				}
				rv = FUNC2(master_ifname, slave_ifname);
				if (rv) {
					FUNC3(stderr,
						"Master '%s', Slave '%s': Error: "
						"Enslave failed\n",
						master_ifname, slave_ifname);
					res = rv;
				}
			}
		} while ((slave_ifname = *spp++) != NULL);
	}

out:
	if (skfd >= 0) {
		FUNC1(skfd);
	}

	return res;
}