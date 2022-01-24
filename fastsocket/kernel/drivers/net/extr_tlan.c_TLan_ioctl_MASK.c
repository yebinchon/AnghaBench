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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; } ;
struct ifreq {int dummy; } ;
struct TYPE_3__ {int* phy; size_t phyNum; int /*<<< orphan*/  phyOnline; } ;
typedef  TYPE_1__ TLanPrivateInfo ;

/* Variables and functions */
 int EAGAIN ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int,int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC2 (struct ifreq*) ; 
 TYPE_1__* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifreq *rq, int cmd)
{
	TLanPrivateInfo *priv = FUNC3(dev);
	struct mii_ioctl_data *data = FUNC2(rq);
	u32 phy   = priv->phy[priv->phyNum];

	if (!priv->phyOnline)
		return -EAGAIN;

	switch(cmd) {
	case SIOCGMIIPHY:		/* Get address of MII PHY in use. */
			data->phy_id = phy;


	case SIOCGMIIREG:		/* Read MII PHY register. */
			FUNC0(dev, data->phy_id & 0x1f,
					data->reg_num & 0x1f, &data->val_out);
			return 0;


	case SIOCSMIIREG:		/* Write MII PHY register. */
			FUNC1(dev, data->phy_id & 0x1f,
					 data->reg_num & 0x1f, data->val_in);
			return 0;
		default:
			return -EOPNOTSUPP;
	}
}