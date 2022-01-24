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
struct net_device {unsigned int base_addr; int /*<<< orphan*/  name; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifrn_name; } ;
struct ifreq {TYPE_1__ ifr_ifrn; } ;
struct el3_private {int phys; int /*<<< orphan*/  window_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EL3_CMD ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 struct mii_ioctl_data* FUNC2 (struct ifreq*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int,int,int /*<<< orphan*/ ) ; 
 struct el3_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct el3_private *lp = FUNC6(dev);
	unsigned int ioaddr = dev->base_addr;
	struct mii_ioctl_data *data = FUNC2(rq);
	int phy = lp->phys & 0x1f;

	FUNC0(2, "%s: In ioct(%-.6s, %#4.4x) %4.4x %4.4x %4.4x %4.4x.\n",
		  dev->name, rq->ifr_ifrn.ifrn_name, cmd,
		  data->phy_id, data->reg_num, data->val_in, data->val_out);

	switch(cmd) {
	case SIOCGMIIPHY:		/* Get the address of the PHY in use. */
		data->phy_id = phy;
	case SIOCGMIIREG:		/* Read the specified MII register. */
		{
			int saved_window;
			unsigned long flags;

			FUNC7(&lp->window_lock, flags);
			saved_window = FUNC3(ioaddr + EL3_CMD) >> 13;
			FUNC1(4);
			data->val_out = FUNC4(ioaddr, data->phy_id & 0x1f,
						  data->reg_num & 0x1f);
			FUNC1(saved_window);
			FUNC8(&lp->window_lock, flags);
			return 0;
		}
	case SIOCSMIIREG:		/* Write the specified MII register */
		{
			int saved_window;
                       unsigned long flags;

			FUNC7(&lp->window_lock, flags);
			saved_window = FUNC3(ioaddr + EL3_CMD) >> 13;
			FUNC1(4);
			FUNC5(ioaddr, data->phy_id & 0x1f,
				   data->reg_num & 0x1f, data->val_in);
			FUNC1(saved_window);
			FUNC8(&lp->window_lock, flags);
			return 0;
		}
	default:
		return -EOPNOTSUPP;
	}
}