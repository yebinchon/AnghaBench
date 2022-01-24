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
struct TYPE_2__ {scalar_t__ sa_data; int /*<<< orphan*/  sa_family; } ;
struct ifreq {TYPE_1__ ifr_addr; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCGIFADDR ; 
 int /*<<< orphan*/  SIOCGIFBRDADDR ; 
 int /*<<< orphan*/  SIOCGIFDSTADDR ; 
 int /*<<< orphan*/  SIOCGIFNETMASK ; 
 int /*<<< orphan*/  SIOCSIFADDR ; 
 int /*<<< orphan*/  SIOCSIFBRDADDR ; 
 int /*<<< orphan*/  SIOCSIFDSTADDR ; 
 int /*<<< orphan*/  SIOCSIFNETMASK ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  skfd ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,unsigned char,...) ; 

__attribute__((used)) static int FUNC5(char *master_ifname, char *slave_ifname)
{
	struct ifreq ifr;
	int res;
	unsigned char *ipaddr;
	int i;
	struct {
		char *req_name;
		char *desc;
		int g_ioctl;
		int s_ioctl;
	} ifra[] = {
		{"IFADDR", "addr", SIOCGIFADDR, SIOCSIFADDR},
		{"DSTADDR", "destination addr", SIOCGIFDSTADDR, SIOCSIFDSTADDR},
		{"BRDADDR", "broadcast addr", SIOCGIFBRDADDR, SIOCSIFBRDADDR},
		{"NETMASK", "netmask", SIOCGIFNETMASK, SIOCSIFNETMASK},
		{NULL, NULL, 0, 0},
	};

	for (i = 0; ifra[i].req_name; i++) {
		FUNC3(ifr.ifr_name, master_ifname, IFNAMSIZ);
		res = FUNC0(skfd, ifra[i].g_ioctl, &ifr);
		if (res < 0) {
			int saved_errno = errno;

			FUNC4("Interface '%s': Error: SIOCG%s failed: %s\n",
				master_ifname, ifra[i].req_name,
				FUNC2(saved_errno));

			ifr.ifr_addr.sa_family = AF_INET;
			FUNC1(ifr.ifr_addr.sa_data, 0,
			       sizeof(ifr.ifr_addr.sa_data));
		}

		FUNC3(ifr.ifr_name, slave_ifname, IFNAMSIZ);
		res = FUNC0(skfd, ifra[i].s_ioctl, &ifr);
		if (res < 0) {
			int saved_errno = errno;

			FUNC4("Interface '%s': Error: SIOCS%s failed: %s\n",
				slave_ifname, ifra[i].req_name,
				FUNC2(saved_errno));

		}

		ipaddr = (unsigned char *)ifr.ifr_addr.sa_data;
		FUNC4("Interface '%s': set IP %s to %d.%d.%d.%d\n",
			slave_ifname, ifra[i].desc,
			ipaddr[0], ipaddr[1], ipaddr[2], ipaddr[3]);
	}

	return 0;
}