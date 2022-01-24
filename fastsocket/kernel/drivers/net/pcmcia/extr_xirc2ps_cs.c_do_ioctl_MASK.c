#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {unsigned int base_addr; int /*<<< orphan*/  name; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifrn_name; } ;
struct ifreq {TYPE_1__ ifr_ifrn; } ;
struct TYPE_5__ {int /*<<< orphan*/  mohawk; } ;
typedef  TYPE_2__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 struct mii_ioctl_data* FUNC1 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int,int,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev, struct ifreq *rq, int cmd)
{
    local_info_t *local = FUNC4(dev);
    unsigned int ioaddr = dev->base_addr;
    struct mii_ioctl_data *data = FUNC1(rq);

    FUNC0(1, "%s: ioctl(%-.6s, %#04x) %04x %04x %04x %04x\n",
	  dev->name, rq->ifr_ifrn.ifrn_name, cmd,
	  data->phy_id, data->reg_num, data->val_in, data->val_out);

    if (!local->mohawk)
	return -EOPNOTSUPP;

    switch(cmd) {
      case SIOCGMIIPHY:		/* Get the address of the PHY in use. */
	data->phy_id = 0;	/* we have only this address */
	/* fall through */
      case SIOCGMIIREG:		/* Read the specified MII register. */
	data->val_out = FUNC2(ioaddr, data->phy_id & 0x1f,
			       data->reg_num & 0x1f);
	break;
      case SIOCSMIIREG:		/* Write the specified MII register */
	FUNC3(ioaddr, data->phy_id & 0x1f, data->reg_num & 0x1f, data->val_in,
	       16);
	break;
      default:
	return -EOPNOTSUPP;
    }
    return 0;
}