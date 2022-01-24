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
typedef  int u32 ;
struct usbnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  E2P_CMD ; 
 int E2P_CMD_ADDR_ ; 
 int E2P_CMD_BUSY_ ; 
 int E2P_CMD_READ_ ; 
 int /*<<< orphan*/  E2P_DATA ; 
 int FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct usbnet *dev, u32 offset, u32 length,
				u8 *data)
{
	u32 val;
	int i, ret;

	FUNC0(!dev);
	FUNC0(!data);

	ret = FUNC1(dev);
	if (ret)
		return ret;

	for (i = 0; i < length; i++) {
		val = E2P_CMD_BUSY_ | E2P_CMD_READ_ | (offset & E2P_CMD_ADDR_);
		FUNC4(dev, E2P_CMD, val);

		ret = FUNC3(dev);
		if (ret < 0)
			return ret;

		FUNC2(dev, E2P_DATA, &val);

		data[i] = val & 0xFF;
		offset++;
	}

	return 0;
}