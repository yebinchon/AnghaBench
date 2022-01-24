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
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_WRITE_GPIOS ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev, u16 value, int sleep)
{
	int ret;

	FUNC1(dev,"asix_write_gpio() - value = 0x%04x", value);
	ret = FUNC0(dev, AX_CMD_WRITE_GPIOS, value, 0, 0, NULL);
	if (ret < 0)
		FUNC2(dev, "Failed to write GPIO value 0x%04x: %02x",
			value, ret);

	if (sleep)
		FUNC3(sleep);

	return ret;
}