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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct sa1100_irda {TYPE_1__ rx_buff; int /*<<< orphan*/  open; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct if_irda_req {int ifr_receiving; int /*<<< orphan*/  ifr_baudrate; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct sa1100_irda*) ; 
 int /*<<< orphan*/  OUTSIDE_FRAME ; 
#define  SIOCGRECEIVING 130 
#define  SIOCSBANDWIDTH 129 
#define  SIOCSMEDIABUSY 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct sa1100_irda* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct sa1100_irda*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev, struct ifreq *ifreq, int cmd)
{
	struct if_irda_req *rq = (struct if_irda_req *)ifreq;
	struct sa1100_irda *si = FUNC3(dev);
	int ret = -EOPNOTSUPP;

	switch (cmd) {
	case SIOCSBANDWIDTH:
		if (FUNC1(CAP_NET_ADMIN)) {
			/*
			 * We are unable to set the speed if the
			 * device is not running.
			 */
			if (si->open) {
				ret = FUNC5(si,
						rq->ifr_baudrate);
			} else {
				FUNC4("sa1100_irda_ioctl: SIOCSBANDWIDTH: !netif_running\n");
				ret = 0;
			}
		}
		break;

	case SIOCSMEDIABUSY:
		ret = -EPERM;
		if (FUNC1(CAP_NET_ADMIN)) {
			FUNC2(dev, TRUE);
			ret = 0;
		}
		break;

	case SIOCGRECEIVING:
		rq->ifr_receiving = FUNC0(si) ? 0
					: si->rx_buff.state != OUTSIDE_FRAME;
		break;

	default:
		break;
	}
		
	return ret;
}