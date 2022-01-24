#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct TYPE_8__ {struct cx231xx* alt_max_pkt_size; } ;
struct TYPE_7__ {struct cx231xx* alt_max_pkt_size; } ;
struct TYPE_6__ {struct cx231xx* alt_max_pkt_size; } ;
struct TYPE_5__ {struct cx231xx* alt_max_pkt_size; } ;
struct cx231xx {TYPE_4__ ts1_mode; TYPE_3__ sliced_cc_mode; TYPE_2__ vbi_mode; TYPE_1__ video_mode; scalar_t__ users; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  wait_stream; int /*<<< orphan*/  wait_frame; scalar_t__ USE_ISO; int /*<<< orphan*/  vdev; int /*<<< orphan*/  open; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_DISCONNECTED ; 
 int /*<<< orphan*/  DEV_MISCONFIGURED ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cx231xx* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct usb_interface *interface)
{
	struct cx231xx *dev;

	dev = FUNC8(interface);
	FUNC9(interface, NULL);

	if (!dev)
		return;

	if (!dev->udev)
		return;

	/* delete v4l2 device */
	FUNC10(&dev->v4l2_dev);

	/* wait until all current v4l2 io is finished then deallocate
	   resources */
	FUNC6(&dev->lock);

	FUNC13(&dev->open);

	if (dev->users) {
		FUNC4
		    ("device %s is open! Deregistration and memory "
		     "deallocation are deferred on close.\n",
		     FUNC11(dev->vdev));

		dev->state |= DEV_MISCONFIGURED;
		if (dev->USE_ISO)
			FUNC3(dev);
		else
			FUNC2(dev);
		dev->state |= DEV_DISCONNECTED;
		FUNC12(&dev->wait_frame);
		FUNC12(&dev->wait_stream);
	} else {
		dev->state |= DEV_DISCONNECTED;
		FUNC1(dev);
	}

	FUNC0(dev);

	FUNC7(&dev->lock);

	if (!dev->users) {
		FUNC5(dev->video_mode.alt_max_pkt_size);
		FUNC5(dev->vbi_mode.alt_max_pkt_size);
		FUNC5(dev->sliced_cc_mode.alt_max_pkt_size);
		FUNC5(dev->ts1_mode.alt_max_pkt_size);
		FUNC5(dev);
		dev = NULL;
	}
}