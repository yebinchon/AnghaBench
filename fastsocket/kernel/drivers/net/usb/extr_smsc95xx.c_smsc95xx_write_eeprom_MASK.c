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
 int E2P_CMD_EWEN_ ; 
 int E2P_CMD_WRITE_ ; 
 int /*<<< orphan*/  E2P_DATA ; 
 int FUNC1 (struct usbnet*) ; 
 int FUNC2 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev, u32 offset, u32 length,
				 u8 *data)
{
	u32 val;
	int i, ret;

	FUNC0(!dev);
	FUNC0(!data);

	ret = FUNC1(dev);
	if (ret)
		return ret;

	/* Issue write/erase enable command */
	val = E2P_CMD_BUSY_ | E2P_CMD_EWEN_;
	FUNC3(dev, E2P_CMD, val);

	ret = FUNC2(dev);
	if (ret < 0)
		return ret;

	for (i = 0; i < length; i++) {

		/* Fill data register */
		val = data[i];
		FUNC3(dev, E2P_DATA, val);

		/* Send "write" command */
		val = E2P_CMD_BUSY_ | E2P_CMD_WRITE_ | (offset & E2P_CMD_ADDR_);
		FUNC3(dev, E2P_CMD, val);

		ret = FUNC2(dev);
		if (ret < 0)
			return ret;

		offset++;
	}

	return 0;
}