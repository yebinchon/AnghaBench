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
struct net_device {int dummy; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct TYPE_2__ {scalar_t__ p_encap; int /*<<< orphan*/  ppp_slot; } ;
typedef  TYPE_1__ isdn_net_local ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ ISDN_NET_ENCAP_SYNCPPP ; 
 int /*<<< orphan*/  PPP_VERSION ; 
#define  SIOCGPPPSTATS 129 
#define  SIOCGPPPVER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ifreq*,struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	int error=0;
	int len;
	isdn_net_local *lp = (isdn_net_local *) FUNC2(dev);


	if (lp->p_encap != ISDN_NET_ENCAP_SYNCPPP)
		return -EINVAL;

	switch (cmd) {
#define PPP_VERSION "2.3.7"
		case SIOCGPPPVER:
			len = FUNC3(PPP_VERSION) + 1;
			if (FUNC0(ifr->ifr_data, PPP_VERSION, len))
				error = -EFAULT;
			break;

		case SIOCGPPPSTATS:
			error = FUNC1(lp->ppp_slot, ifr, dev);
			break;
		default:
			error = -EINVAL;
			break;
	}
	return error;
}