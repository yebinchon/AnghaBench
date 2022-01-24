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
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,char*) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct usbnet *dev, int phy, u8 reg, __le16 *value)
{
	int ret, i;

	FUNC5(&dev->phy_mutex);

	FUNC4(dev, DM_SHARED_ADDR, phy ? (reg | 0x40) : reg);
	FUNC4(dev, DM_SHARED_CTRL, phy ? 0xc : 0x4);

	for (i = 0; i < DM_TIMEOUT; i++) {
		u8 tmp;

		FUNC7(1);
		ret = FUNC3(dev, DM_SHARED_CTRL, &tmp);
		if (ret < 0)
			goto out;

		/* ready */
		if ((tmp & 1) == 0)
			break;
	}

	if (i == DM_TIMEOUT) {
		FUNC1(dev, "%s read timed out!", phy ? "phy" : "eeprom");
		ret = -EIO;
		goto out;
	}

	FUNC4(dev, DM_SHARED_CTRL, 0x0);
	ret = FUNC2(dev, DM_SHARED_DATA, 2, value);

	FUNC0(dev, "read shared %d 0x%02x returned 0x%04x, %d",
	       phy, reg, *value, ret);

 out:
	FUNC6(&dev->phy_mutex);
	return ret;
}