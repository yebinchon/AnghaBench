#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct usbnet {TYPE_3__* net; TYPE_2__* udev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  devpath; TYPE_1__* bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NC_READ_TTL_MS ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int /*<<< orphan*/  REG_TTL ; 
 int /*<<< orphan*/  REG_USBCTL ; 
 int STATUS_CONN_OTHER ; 
 int STATUS_PORT_A ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int USBCTL_FLUSH_OTHER ; 
 int USBCTL_FLUSH_THIS ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,char*,char,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*,int) ; 
 int FUNC8 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct usbnet*) ; 

__attribute__((used)) static int FUNC11(struct usbnet *dev)
{
	u16		usbctl, status, ttl;
	u16		*vp = FUNC5(sizeof (u16), GFP_KERNEL);
	int		retval;

	if (!vp)
		return -ENOMEM;

	// nc_dump_registers(dev);

	if ((retval = FUNC8(dev, REG_STATUS, vp)) < 0) {
		FUNC2("can't read %s-%s status: %d",
			dev->udev->bus->bus_name, dev->udev->devpath, retval);
		goto done;
	}
	status = *vp;
	FUNC6(dev, status);

	if ((retval = FUNC8(dev, REG_USBCTL, vp)) < 0) {
		FUNC2("can't read USBCTL, %d", retval);
		goto done;
	}
	usbctl = *vp;
	FUNC7(dev, usbctl);

	FUNC9(dev, REG_USBCTL,
			USBCTL_FLUSH_THIS | USBCTL_FLUSH_OTHER);

	if ((retval = FUNC8(dev, REG_TTL, vp)) < 0) {
		FUNC2("can't read TTL, %d", retval);
		goto done;
	}
	ttl = *vp;
	// nc_dump_ttl(dev, ttl);

	FUNC9(dev, REG_TTL,
			FUNC0(NC_READ_TTL_MS, FUNC1(ttl)) );
	FUNC2("%s: assigned TTL, %d ms", dev->net->name, NC_READ_TTL_MS);

	if (FUNC10(dev))
		FUNC3(dev, "port %c, peer %sconnected",
			(status & STATUS_PORT_A) ? 'A' : 'B',
			(status & STATUS_CONN_OTHER) ? "" : "dis"
			);
	retval = 0;

done:
	FUNC4(vp);
	return retval;
}