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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {int /*<<< orphan*/  phy_mutex; TYPE_1__* udev; } ;
typedef  int __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HIF_REG_PHY_CMD1 ; 
 int HIF_REG_PHY_CMD1_PHYADDR ; 
 int HIF_REG_PHY_CMD1_WRITE ; 
 int HIF_REG_PHY_CMD2_PEND_FLAG_BIT ; 
 int HIF_REG_PHY_CMD2_READY_FLAG_BIT ; 
 int /*<<< orphan*/  HIF_REG_PHY_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct usbnet *dev, u8 index, u16 val)
{
	int ret;
	int i;
	__le16 le_val;

	u8 cmd[2] = {
		HIF_REG_PHY_CMD1_WRITE | HIF_REG_PHY_CMD1_PHYADDR,
		HIF_REG_PHY_CMD2_PEND_FLAG_BIT | (index & 0x1F),
	};

	FUNC5(&dev->phy_mutex);

	/* write the new register contents */
	le_val = FUNC0(val);
	ret = FUNC3(dev, HIF_REG_PHY_DATA, 2, &le_val);
	if (ret < 0)
		goto out;

	/* write the MII command */
	ret = FUNC3(dev, HIF_REG_PHY_CMD1, 2, cmd);
	if (ret < 0)
		goto out;

	/* wait for the command to be accepted by the PHY */
	for (i = 0; i < 10; i++) {
		ret = FUNC2(dev, HIF_REG_PHY_CMD1, 2, cmd);
		if ((ret < 0) || (cmd[1] & HIF_REG_PHY_CMD2_READY_FLAG_BIT))
			break;
		ret = -EIO;
		FUNC4(1);
	}
	if (ret < 0)
		goto out;

	ret = 0;
	FUNC1(&dev->udev->dev, "write PHY reg %02x: %04x (%d tries)\n",
		index, val, i);
out:
	FUNC6(&dev->phy_mutex);
	return ret;
}