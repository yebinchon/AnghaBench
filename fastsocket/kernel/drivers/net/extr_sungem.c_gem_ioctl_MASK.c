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
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; } ;
struct ifreq {int dummy; } ;
struct gem {int mii_phy_addr; int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  lock; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  FUNC0 (struct gem*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gem*) ; 
 int /*<<< orphan*/  FUNC3 (struct gem*) ; 
 struct mii_ioctl_data* FUNC4 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct gem* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct gem *gp = FUNC7(dev);
	struct mii_ioctl_data *data = FUNC4(ifr);
	int rc = -EOPNOTSUPP;
	unsigned long flags;

	/* Hold the PM mutex while doing ioctl's or we may collide
	 * with power management.
	 */
	FUNC5(&gp->pm_mutex);

	FUNC8(&gp->lock, flags);
	FUNC2(gp);
	FUNC9(&gp->lock, flags);

	switch (cmd) {
	case SIOCGMIIPHY:		/* Get address of MII PHY in use. */
		data->phy_id = gp->mii_phy_addr;
		/* Fallthrough... */

	case SIOCGMIIREG:		/* Read MII PHY register. */
		if (!gp->running)
			rc = -EAGAIN;
		else {
			data->val_out = FUNC0(gp, data->phy_id & 0x1f,
						   data->reg_num & 0x1f);
			rc = 0;
		}
		break;

	case SIOCSMIIREG:		/* Write MII PHY register. */
		if (!gp->running)
			rc = -EAGAIN;
		else {
			FUNC1(gp, data->phy_id & 0x1f, data->reg_num & 0x1f,
				    data->val_in);
			rc = 0;
		}
		break;
	};

	FUNC8(&gp->lock, flags);
	FUNC3(gp);
	FUNC9(&gp->lock, flags);

	FUNC6(&gp->pm_mutex);

	return rc;
}