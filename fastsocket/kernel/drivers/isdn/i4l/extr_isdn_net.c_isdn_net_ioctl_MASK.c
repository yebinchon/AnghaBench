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
struct ifreq {int dummy; } ;
struct TYPE_2__ {int p_encap; } ;
typedef  TYPE_1__ isdn_net_local ;

/* Variables and functions */
 int EINVAL ; 
#define  ISDN_NET_ENCAP_CISCOHDLCK 129 
#define  ISDN_NET_ENCAP_SYNCPPP 128 
 int FUNC0 (struct net_device*,struct ifreq*,int) ; 
 int FUNC1 (struct net_device*,struct ifreq*,int) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
			  struct ifreq *ifr, int cmd)
{
	isdn_net_local *lp = (isdn_net_local *) FUNC2(dev);

	switch (lp->p_encap) {
#ifdef CONFIG_ISDN_PPP
	case ISDN_NET_ENCAP_SYNCPPP:
		return isdn_ppp_dev_ioctl(dev, ifr, cmd);
#endif
	case ISDN_NET_ENCAP_CISCOHDLCK:
		return FUNC0(dev, ifr, cmd);
	default:
		return -EINVAL;
	}
}