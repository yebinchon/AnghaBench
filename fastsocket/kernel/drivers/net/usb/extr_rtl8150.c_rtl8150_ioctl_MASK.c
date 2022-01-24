#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct net_device {int dummy; } ;
struct ifreq {int /*<<< orphan*/  ifr_ifru; } ;
struct TYPE_5__ {int phy; } ;
typedef  TYPE_1__ rtl8150_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
#define  SIOCDEVPRIVATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, struct ifreq *rq, int cmd)
{
	rtl8150_t *dev = FUNC1(netdev);
	u16 *data = (u16 *) & rq->ifr_ifru;
	int res = 0;

	switch (cmd) {
	case SIOCDEVPRIVATE:
		data[0] = dev->phy;
	case SIOCDEVPRIVATE + 1:
		FUNC2(dev, dev->phy, (data[1] & 0x1f), &data[3]);
		break;
	case SIOCDEVPRIVATE + 2:
		if (!FUNC0(CAP_NET_ADMIN))
			return -EPERM;
		FUNC3(dev, dev->phy, (data[1] & 0x1f), data[2]);
		break;
	default:
		res = -EOPNOTSUPP;
	}

	return res;
}