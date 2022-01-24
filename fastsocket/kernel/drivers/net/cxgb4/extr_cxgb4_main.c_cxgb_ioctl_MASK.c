#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct port_info {int mdio_addr; TYPE_1__* adapter; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct TYPE_3__ {unsigned int fn; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 struct port_info* FUNC3 (struct net_device*) ; 
 int FUNC4 (TYPE_1__*,unsigned int,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,unsigned int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ifreq *req, int cmd)
{
	unsigned int mbox;
	int ret = 0, prtad, devad;
	struct port_info *pi = FUNC3(dev);
	struct mii_ioctl_data *data = (struct mii_ioctl_data *)&req->ifr_data;

	switch (cmd) {
	case SIOCGMIIPHY:
		if (pi->mdio_addr < 0)
			return -EOPNOTSUPP;
		data->phy_id = pi->mdio_addr;
		break;
	case SIOCGMIIREG:
	case SIOCSMIIREG:
		if (FUNC1(data->phy_id)) {
			prtad = FUNC2(data->phy_id);
			devad = FUNC0(data->phy_id);
		} else if (data->phy_id < 32) {
			prtad = data->phy_id;
			devad = 0;
			data->reg_num &= 0x1f;
		} else
			return -EINVAL;

		mbox = pi->adapter->fn;
		if (cmd == SIOCGMIIREG)
			ret = FUNC4(pi->adapter, mbox, prtad, devad,
					 data->reg_num, &data->val_out);
		else
			ret = FUNC5(pi->adapter, mbox, prtad, devad,
					 data->reg_num, data->val_in);
		break;
	default:
		return -EOPNOTSUPP;
	}
	return ret;
}