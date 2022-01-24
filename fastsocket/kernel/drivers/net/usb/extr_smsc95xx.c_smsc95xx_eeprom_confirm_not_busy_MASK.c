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
typedef  int u32 ;
struct usbnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_CMD ; 
 int E2P_CMD_BUSY_ ; 
 int EIO ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev)
{
	unsigned long start_time = jiffies;
	u32 val;

	do {
		FUNC1(dev, E2P_CMD, &val);

		if (!(val & E2P_CMD_BUSY_))
			return 0;

		FUNC3(40);
	} while (!FUNC2(jiffies, start_time + HZ));

	FUNC0(dev, "EEPROM is busy");
	return -EIO;
}