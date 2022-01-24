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
struct usbnet {int /*<<< orphan*/  phy_mutex; TYPE_1__* udev; } ;
typedef  int __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HIF_REG_PHY_CMD1 ; 
 int HIF_REG_PHY_CMD1_PHYADDR ; 
 int HIF_REG_PHY_CMD1_READ ; 
 int HIF_REG_PHY_CMD2_PEND_FLAG_BIT ; 
 int HIF_REG_PHY_CMD2_READY_FLAG_BIT ; 
 int /*<<< orphan*/  HIF_REG_PHY_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct usbnet *dev, u8 index)
{
	int ret;
	int i;
	__le16 val;

	u8 cmd[2] = {
		HIF_REG_PHY_CMD1_READ | HIF_REG_PHY_CMD1_PHYADDR,
		HIF_REG_PHY_CMD2_PEND_FLAG_BIT | index,
	};

	FUNC5(&dev->phy_mutex);
	/* write the MII command */
	ret = FUNC3(dev, HIF_REG_PHY_CMD1, 2, cmd);
	if (ret < 0)
		goto out;

	/* wait for the data to become valid, should be within < 1ms */
	for (i = 0; i < 10; i++) {
		ret = FUNC2(dev, HIF_REG_PHY_CMD1, 2, cmd);
		if ((ret < 0) || (cmd[1] & HIF_REG_PHY_CMD2_READY_FLAG_BIT))
			break;
		ret = -EIO;
		FUNC4(1);
	}
	if (ret < 0)
		goto out;

	/* read actual register contents */
	ret = FUNC2(dev, HIF_REG_PHY_DATA, 2, &val);
	if (ret < 0)
		goto out;
	ret = FUNC1(val);
	FUNC0(&dev->udev->dev, "read PHY reg %02x: %04x (%d tries)\n",
		index, val, i);
out:
	FUNC6(&dev->phy_mutex);
	return ret;
}