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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct usbnet *dev, u8 cmd, u8 reqtype,
		    u16 value, u16 index, void *data, u16 size)
{
	int ret;

	if (FUNC1(dev->intf) < 0)
		return -ENODEV;
	ret = FUNC0(dev, cmd, reqtype, value, index,
				data, size);
	FUNC2(dev->intf);
	return ret;
}