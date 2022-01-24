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
struct TYPE_2__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct ifreq {TYPE_1__ ifr_addr; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCSIFADDR ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  saved_errno ; 
 int /*<<< orphan*/  skfd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

__attribute__((used)) static int FUNC5(char *ifname)
{
	struct ifreq ifr;
	int res = 0;

	FUNC3(ifr.ifr_name, ifname, IFNAMSIZ);
	ifr.ifr_addr.sa_family = AF_INET;
	FUNC1(ifr.ifr_addr.sa_data, 0, sizeof(ifr.ifr_addr.sa_data));

	res = FUNC0(skfd, SIOCSIFADDR, &ifr);
	if (res < 0) {
		saved_errno = errno;
		FUNC4("Interface '%s': Error: SIOCSIFADDR failed: %s\n",
			ifname, FUNC2(saved_errno));
	} else {
		FUNC4("Interface '%s': address cleared\n", ifname);
	}

	return res;
}