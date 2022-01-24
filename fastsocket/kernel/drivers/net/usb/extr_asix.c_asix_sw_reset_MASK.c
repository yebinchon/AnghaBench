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
struct usbnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_SW_RESET ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct usbnet *dev, u8 flags)
{
	int ret;

        ret = FUNC0(dev, AX_CMD_SW_RESET, flags, 0, 0, NULL);
	if (ret < 0)
		FUNC1(dev,"Failed to send software reset: %02x", ret);

	return ret;
}