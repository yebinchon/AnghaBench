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
struct usb_device {int dummy; } ;
struct gspca_dev {struct usb_device* dev; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__ const,scalar_t__ const,scalar_t__ const) ; 
 int FUNC1 (struct usb_device*,scalar_t__ const,scalar_t__ const,scalar_t__ const) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev,
			const __u16 data[][3])
{
	struct usb_device *dev = gspca_dev->dev;
	int ret, i = 0;

	while (data[i][0] != 0 || data[i][1] != 0 || data[i][2] != 0) {
		ret = FUNC1(dev, data[i][0], data[i][2], data[i][1]);
		if (ret < 0) {
			FUNC0(D_ERR,
				"Reg write failed for 0x%02x,0x%02x,0x%02x",
				data[i][0], data[i][1], data[i][2]);
			return ret;
		}
		i++;
	}
	return 0;
}