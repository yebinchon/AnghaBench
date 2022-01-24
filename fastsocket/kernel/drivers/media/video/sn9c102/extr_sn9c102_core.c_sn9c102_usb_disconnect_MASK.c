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
struct sn9c102_device {int /*<<< orphan*/  kref; int /*<<< orphan*/  wait_open; int /*<<< orphan*/  state; int /*<<< orphan*/  wait_stream; int /*<<< orphan*/  wait_frame; TYPE_1__* v4ldev; scalar_t__ users; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEV_DISCONNECTED ; 
 int /*<<< orphan*/  DEV_MISCONFIGURED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sn9c102_dev_lock ; 
 int /*<<< orphan*/  sn9c102_release_resources ; 
 int /*<<< orphan*/  FUNC3 (struct sn9c102_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sn9c102_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface* intf)
{
	struct sn9c102_device* cam;

	FUNC1(&sn9c102_dev_lock);

	cam = FUNC5(intf);

	FUNC0(2, "Disconnecting %s...", cam->v4ldev->name);

	if (cam->users) {
		FUNC0(2, "Device /dev/video%d is open! Deregistration and "
		       "memory deallocation are deferred.",
		    cam->v4ldev->num);
		cam->state |= DEV_MISCONFIGURED;
		FUNC3(cam);
		cam->state |= DEV_DISCONNECTED;
		FUNC7(&cam->wait_frame);
		FUNC6(&cam->wait_stream);
	} else
		cam->state |= DEV_DISCONNECTED;

	FUNC8(&cam->wait_open);

	FUNC2(&cam->kref, sn9c102_release_resources);

	FUNC4(&sn9c102_dev_lock);
}