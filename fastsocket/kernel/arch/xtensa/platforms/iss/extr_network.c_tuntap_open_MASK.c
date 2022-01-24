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
struct TYPE_4__ {char* dev_name; int fd; int /*<<< orphan*/  fixed_config; } ;
struct TYPE_5__ {TYPE_1__ tuntap; } ;
struct TYPE_6__ {TYPE_2__ info; } ;
struct iss_net_private {TYPE_3__ tp; } ;
struct ifreq {int ifr_flags; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_NO_PI ; 
 int IFF_TAP ; 
 int /*<<< orphan*/  TUNSETIFF ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(struct iss_net_private *lp)
{
	struct ifreq ifr;
	char *dev_name = lp->tp.info.tuntap.dev_name;
	int err = -EINVAL;
	int fd;

	/* We currently only support a fixed configuration. */

	if (!lp->tp.info.tuntap.fixed_config)
		return -EINVAL;

	if ((fd = FUNC4("/dev/net/tun", 02, 0)) < 0) {	/* O_RDWR */
		FUNC1("Failed to open /dev/net/tun, returned %d "
		       "(errno = %d)\n", fd, errno);
		return fd;
	}

	FUNC0(&ifr, 0, sizeof ifr);
	ifr.ifr_flags = IFF_TAP | IFF_NO_PI;
	FUNC5(ifr.ifr_name, dev_name, sizeof ifr.ifr_name);

	if ((err = FUNC3(fd, TUNSETIFF, (void*) &ifr)) < 0) {
		FUNC1("Failed to set interface, returned %d "
		       "(errno = %d)\n", err, errno);
		FUNC2(fd);
		return err;
	}

	lp->tp.info.tuntap.fd = fd;
	return err;
}