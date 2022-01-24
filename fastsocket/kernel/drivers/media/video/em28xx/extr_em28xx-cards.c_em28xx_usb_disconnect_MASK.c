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
struct usb_interface {int dummy; } ;
struct em28xx {struct em28xx* alt_max_pkt_size; scalar_t__ users; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  wait_stream; int /*<<< orphan*/  wait_frame; TYPE_1__* vdev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  open; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_DISCONNECTED ; 
 int /*<<< orphan*/  DEV_MISCONFIGURED ; 
 int /*<<< orphan*/  FUNC0 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct em28xx* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct usb_interface *interface)
{
	struct em28xx *dev;

	dev = FUNC8(interface);
	FUNC9(interface, NULL);

	if (!dev)
		return;

	FUNC1("disconnecting %s\n", dev->vdev->name);

	/* wait until all current v4l2 io is finished then deallocate
	   resources */
	FUNC6(&dev->lock);

	FUNC13(&dev->open);

	FUNC10(&dev->v4l2_dev);

	if (dev->users) {
		FUNC4
		    ("device %s is open! Deregistration and memory "
		     "deallocation are deferred on close.\n",
		     FUNC11(dev->vdev));

		dev->state |= DEV_MISCONFIGURED;
		FUNC3(dev);
		dev->state |= DEV_DISCONNECTED;
		FUNC12(&dev->wait_frame);
		FUNC12(&dev->wait_stream);
	} else {
		dev->state |= DEV_DISCONNECTED;
		FUNC2(dev);
	}

	FUNC0(dev);

	FUNC7(&dev->lock);

	if (!dev->users) {
		FUNC5(dev->alt_max_pkt_size);
		FUNC5(dev);
	}
}