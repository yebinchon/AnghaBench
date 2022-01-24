#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct usb_device {int dummy; } ;
struct hexline {int len; int* data; int /*<<< orphan*/  addr; int /*<<< orphan*/  chk; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_cs_register; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 TYPE_1__* cypress ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct firmware const*,struct hexline*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int*,int) ; 

int FUNC4(struct usb_device *udev, const struct firmware *fw, int type)
{
	struct hexline hx;
	u8 reset;
	int ret,pos=0;

	/* stop the CPU */
	reset = 1;
	if ((ret = FUNC3(udev,cypress[type].cpu_cs_register,&reset,1)) != 1)
		FUNC2("could not stop the USB controller CPU.");

	while ((ret = FUNC1(fw,&hx,&pos)) > 0) {
		FUNC0("writing to address 0x%04x (buffer: 0x%02x %02x)\n",hx.addr,hx.len,hx.chk);
		ret = FUNC3(udev,hx.addr,hx.data,hx.len);

		if (ret != hx.len) {
			FUNC2("error while transferring firmware "
				"(transferred size: %d, block size: %d)",
				ret,hx.len);
			ret = -EINVAL;
			break;
		}
	}
	if (ret < 0) {
		FUNC2("firmware download failed at %d with %d",pos,ret);
		return ret;
	}

	if (ret == 0) {
		/* restart the CPU */
		reset = 0;
		if (ret || FUNC3(udev,cypress[type].cpu_cs_register,&reset,1) != 1) {
			FUNC2("could not restart the USB controller CPU.");
			ret = -EINVAL;
		}
	} else
		ret = -EIO;

	return ret;
}