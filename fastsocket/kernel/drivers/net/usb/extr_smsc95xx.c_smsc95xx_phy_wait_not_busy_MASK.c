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
 int EIO ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  MII_ADDR ; 
 int MII_BUSY_ ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct usbnet *dev)
{
	unsigned long start_time = jiffies;
	u32 val;

	do {
		FUNC0(dev, MII_ADDR, &val);
		if (!(val & MII_BUSY_))
			return 0;
	} while (!FUNC1(jiffies, start_time + HZ));

	return -EIO;
}