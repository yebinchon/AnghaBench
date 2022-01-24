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
struct dev_ifr {int /*<<< orphan*/  req_name; TYPE_1__* req_ifr; int /*<<< orphan*/  req_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int saved_errno ; 
 int /*<<< orphan*/  skfd ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(char *ifname, struct dev_ifr ifra[])
{
	int i;
	int res = 0;

	for (i = 0; ifra[i].req_ifr; i++) {
		FUNC2(ifra[i].req_ifr->ifr_name, ifname, IFNAMSIZ);
		res = FUNC0(skfd, ifra[i].req_type, ifra[i].req_ifr);
		if (res < 0) {
			saved_errno = errno;
			FUNC3("Interface '%s': Error: %s failed: %s\n",
				ifname, ifra[i].req_name,
				FUNC1(saved_errno));

			return saved_errno;
		}
	}

	return 0;
}