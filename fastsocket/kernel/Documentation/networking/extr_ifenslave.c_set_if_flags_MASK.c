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
struct ifreq {short ifr_flags; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  saved_errno ; 
 int /*<<< orphan*/  skfd ; 
 short FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,short) ; 

__attribute__((used)) static int FUNC4(char *ifname, short flags)
{
	struct ifreq ifr;
	int res = 0;

	ifr.ifr_flags = flags;
	FUNC2(ifr.ifr_name, ifname, IFNAMSIZ);

	res = FUNC0(skfd, SIOCSIFFLAGS, &ifr);
	if (res < 0) {
		saved_errno = errno;
		FUNC3("Interface '%s': Error: SIOCSIFFLAGS failed: %s\n",
			ifname, FUNC1(saved_errno));
	} else {
		FUNC3("Interface '%s': flags set to %04X.\n", ifname, flags);
	}

	return res;
}