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
struct netdrv_private {int* phys; int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 struct mii_ioctl_data* FUNC1 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int,int /*<<< orphan*/ ) ; 
 struct netdrv_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7 (struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct netdrv_private *tp = FUNC4(dev);
	struct mii_ioctl_data *data = FUNC1(rq);
	unsigned long flags;
	int rc = 0;

	FUNC0 ("ENTER\n");

	switch (cmd) {
	case SIOCGMIIPHY:		/* Get address of MII PHY in use. */
		data->phy_id = tp->phys[0] & 0x3f;
		/* Fall Through */

	case SIOCGMIIREG:		/* Read MII PHY register. */
		FUNC5 (&tp->lock, flags);
		data->val_out = FUNC2 (dev, data->phy_id & 0x1f, data->reg_num & 0x1f);
		FUNC6 (&tp->lock, flags);
		break;

	case SIOCSMIIREG:		/* Write MII PHY register. */
		FUNC5 (&tp->lock, flags);
		FUNC3 (dev, data->phy_id & 0x1f, data->reg_num & 0x1f, data->val_in);
		FUNC6 (&tp->lock, flags);
		break;

	default:
		rc = -EOPNOTSUPP;
		break;
	}

	FUNC0 ("EXIT, returning %d\n", rc);
	return rc;
}