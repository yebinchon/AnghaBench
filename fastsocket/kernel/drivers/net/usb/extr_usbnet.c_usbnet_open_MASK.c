#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usbnet {int /*<<< orphan*/  intf; int /*<<< orphan*/  flags; int /*<<< orphan*/  bh; scalar_t__ pkt_err; scalar_t__ pkt_cnt; struct driver_info* driver_info; TYPE_3__* net; scalar_t__ interrupt; TYPE_2__* udev; } ;
struct net_device {int dummy; } ;
struct driver_info {char* description; int (* reset ) (struct usbnet*) ;int (* check_connect ) (struct usbnet*) ;int flags; int (* manage_power ) (struct usbnet*,int) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  mtu; } ;
struct TYPE_7__ {int /*<<< orphan*/  devpath; TYPE_1__* bus; } ;
struct TYPE_6__ {int bus_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DEV_OPEN ; 
 int /*<<< orphan*/  EVENT_NO_RUNTIME_PM ; 
 int /*<<< orphan*/  EVENT_RX_KILL ; 
 int FLAG_FRAMING_AX ; 
 int FLAG_FRAMING_GL ; 
 int FLAG_FRAMING_NC ; 
 int FLAG_FRAMING_RN ; 
 int FLAG_FRAMING_Z ; 
 int FLAG_RH_HAS_MANAGE_POWER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct usbnet*) ; 
 scalar_t__ FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifup ; 
 struct usbnet* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ,TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*,int /*<<< orphan*/ ,TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int /*<<< orphan*/ ,TYPE_3__*,char*,int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct usbnet*) ; 
 int FUNC10 (struct usbnet*) ; 
 int FUNC11 (struct usbnet*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct usbnet*,int /*<<< orphan*/ ) ; 

int FUNC16 (struct net_device *net)
{
	struct usbnet		*dev = FUNC3(net);
	int			retval;
	struct driver_info	*info = dev->driver_info;

	if ((retval = FUNC13(dev->intf)) < 0) {
		FUNC6(dev, ifup, dev->net,
			   "resumption fail (%d) usbnet usb-%s-%s, %s\n",
			   retval,
			   dev->udev->bus->bus_name,
			   dev->udev->devpath,
			   info->description);
		goto done_nopm;
	}

	// put into "known safe" state
	if (info->reset && (retval = info->reset (dev)) < 0) {
		FUNC6(dev, ifup, dev->net,
			   "open reset fail (%d) usbnet usb-%s-%s, %s\n",
			   retval,
			   dev->udev->bus->bus_name,
			   dev->udev->devpath,
			   info->description);
		goto done;
	}

	// insist peer be connected
	if (info->check_connect && (retval = info->check_connect (dev)) < 0) {
		FUNC4(dev, ifup, dev->net, "can't open; %d\n", retval);
		goto done;
	}

	/* start any status interrupt transfer */
	if (dev->interrupt) {
		retval = FUNC15(dev, GFP_KERNEL);
		if (retval < 0) {
			FUNC5(dev, ifup, dev->net,
				  "intr submit %d\n", retval);
			goto done;
		}
	}

	FUNC8(EVENT_DEV_OPEN, &dev->flags);
	FUNC7 (net);
	FUNC6(dev, ifup, dev->net,
		   "open: enable queueing (rx %d, tx %d) mtu %d %s framing\n",
		   (int)FUNC0(dev), (int)FUNC1(dev),
		   dev->net->mtu,
		   (dev->driver_info->flags & FLAG_FRAMING_NC) ? "NetChip" :
		   (dev->driver_info->flags & FLAG_FRAMING_GL) ? "GeneSys" :
		   (dev->driver_info->flags & FLAG_FRAMING_Z) ? "Zaurus" :
		   (dev->driver_info->flags & FLAG_FRAMING_RN) ? "RNDIS" :
		   (dev->driver_info->flags & FLAG_FRAMING_AX) ? "ASIX" :
		   "simple");

	/* reset rx error state */
	dev->pkt_cnt = 0;
	dev->pkt_err = 0;
	FUNC2(EVENT_RX_KILL, &dev->flags);

	// delay posting reads until we're fully open
	FUNC12 (&dev->bh);
	if ((info->flags & FLAG_RH_HAS_MANAGE_POWER) && info->manage_power) {
		retval = info->manage_power(dev, 1);
		if (retval < 0) {
			retval = 0;
			FUNC8(EVENT_NO_RUNTIME_PM, &dev->flags);
		} else {
			FUNC14(dev->intf);
		}
	}
	return retval;
done:
	FUNC14(dev->intf);
done_nopm:
	return retval;
}