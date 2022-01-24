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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; int /*<<< orphan*/  phy_id; } ;
struct ifreq {int dummy; } ;
struct atl1e_adapter {int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  hw; struct pci_dev* pdev; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC3 (struct ifreq*) ; 
 struct atl1e_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev,
			   struct ifreq *ifr, int cmd)
{
	struct atl1e_adapter *adapter = FUNC4(netdev);
	struct pci_dev *pdev = adapter->pdev;
	struct mii_ioctl_data *data = FUNC3(ifr);
	unsigned long flags;
	int retval = 0;

	if (!FUNC5(netdev))
		return -EINVAL;

	FUNC6(&adapter->mdio_lock, flags);
	switch (cmd) {
	case SIOCGMIIPHY:
		data->phy_id = 0;
		break;

	case SIOCGMIIREG:
		if (FUNC0(&adapter->hw, data->reg_num & 0x1F,
				    &data->val_out)) {
			retval = -EIO;
			goto out;
		}
		break;

	case SIOCSMIIREG:
		if (data->reg_num & ~(0x1F)) {
			retval = -EFAULT;
			goto out;
		}

		FUNC2(&pdev->dev, "<atl1e_mii_ioctl> write %x %x",
				data->reg_num, data->val_in);
		if (FUNC1(&adapter->hw,
				     data->reg_num, data->val_in)) {
			retval = -EIO;
			goto out;
		}
		break;

	default:
		retval = -EOPNOTSUPP;
		break;
	}
out:
	FUNC7(&adapter->mdio_lock, flags);
	return retval;

}