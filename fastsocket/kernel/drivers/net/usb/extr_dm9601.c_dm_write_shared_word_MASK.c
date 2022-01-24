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
typedef  int u8 ;
struct usbnet {int /*<<< orphan*/  phy_mutex; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  DM_SHARED_ADDR ; 
 int /*<<< orphan*/  DM_SHARED_CTRL ; 
 int /*<<< orphan*/  DM_SHARED_DATA ; 
 int DM_TIMEOUT ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,char*) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct usbnet *dev, int phy, u8 reg, __le16 value)
{
	int ret, i;

	FUNC4(&dev->phy_mutex);

	ret = FUNC2(dev, DM_SHARED_DATA, 2, &value);
	if (ret < 0)
		goto out;

	FUNC3(dev, DM_SHARED_ADDR, phy ? (reg | 0x40) : reg);
	FUNC3(dev, DM_SHARED_CTRL, phy ? 0x1a : 0x12);

	for (i = 0; i < DM_TIMEOUT; i++) {
		u8 tmp;

		FUNC6(1);
		ret = FUNC1(dev, DM_SHARED_CTRL, &tmp);
		if (ret < 0)
			goto out;

		/* ready */
		if ((tmp & 1) == 0)
			break;
	}

	if (i == DM_TIMEOUT) {
		FUNC0(dev, "%s write timed out!", phy ? "phy" : "eeprom");
		ret = -EIO;
		goto out;
	}

	FUNC3(dev, DM_SHARED_CTRL, 0x0);

out:
	FUNC5(&dev->phy_mutex);
	return ret;
}