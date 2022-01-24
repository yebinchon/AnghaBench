#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct net_device_ops {int (* ndo_do_ioctl ) (struct net_device*,struct ifreq*,int) ;} ;
struct net_device {int /*<<< orphan*/  name; TYPE_2__* ethtool_ops; struct net_device_ops* netdev_ops; } ;
struct mii_ioctl_data {int val_out; int /*<<< orphan*/  reg_num; } ;
struct ifreq {int /*<<< orphan*/  ifr_name; } ;
struct TYPE_3__ {scalar_t__ use_carrier; } ;
struct bonding {TYPE_1__ params; } ;
struct TYPE_4__ {scalar_t__ (* get_link ) (struct net_device*) ;} ;

/* Variables and functions */
 int BMSR_LSTATUS ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 scalar_t__ FUNC0 (struct net_device*,struct ifreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  SIOCGMIIPHY ; 
 int /*<<< orphan*/  SIOCGMIIREG ; 
 struct mii_ioctl_data* FUNC1 (struct ifreq*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct bonding *bond,
			       struct net_device *slave_dev, int reporting)
{
	const struct net_device_ops *slave_ops = slave_dev->netdev_ops;
	int (*ioctl)(struct net_device *, struct ifreq *, int);
	struct ifreq ifr;
	struct mii_ioctl_data *mii;

	if (!reporting && !FUNC3(slave_dev))
		return 0;

	if (bond->params.use_carrier)
		return FUNC2(slave_dev) ? BMSR_LSTATUS : 0;

	/* Try to get link status using Ethtool first. */
	if (slave_dev->ethtool_ops) {
		if (slave_dev->ethtool_ops->get_link) {
			u32 link;

			link = slave_dev->ethtool_ops->get_link(slave_dev);

			return link ? BMSR_LSTATUS : 0;
		}
	}

	/* Ethtool can't be used, fallback to MII ioctls. */
	ioctl = slave_ops->ndo_do_ioctl;
	if (ioctl) {
		/* TODO: set pointer to correct ioctl on a per team member */
		/*       bases to make this more efficient. that is, once  */
		/*       we determine the correct ioctl, we will always    */
		/*       call it and not the others for that team          */
		/*       member.                                           */

		/*
		 * We cannot assume that SIOCGMIIPHY will also read a
		 * register; not all network drivers (e.g., e100)
		 * support that.
		 */

		/* Yes, the mii is overlaid on the ifreq.ifr_ifru */
		FUNC4(ifr.ifr_name, slave_dev->name, IFNAMSIZ);
		mii = FUNC1(&ifr);
		if (FUNC0(slave_dev, &ifr, SIOCGMIIPHY) == 0) {
			mii->reg_num = MII_BMSR;
			if (FUNC0(slave_dev, &ifr, SIOCGMIIREG) == 0)
				return mii->val_out & BMSR_LSTATUS;
		}
	}

	/*
	 * If reporting, report that either there's no dev->do_ioctl,
	 * or both SIOCGMIIREG and get_link failed (meaning that we
	 * cannot report link status).  If not reporting, pretend
	 * we're ok.
	 */
	return reporting ? -1 : BMSR_LSTATUS;
}