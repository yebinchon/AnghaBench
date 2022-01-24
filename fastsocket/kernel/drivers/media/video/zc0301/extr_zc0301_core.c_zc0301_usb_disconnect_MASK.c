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
struct zc0301_device {int /*<<< orphan*/  kref; int /*<<< orphan*/  wait_open; int /*<<< orphan*/  state; int /*<<< orphan*/  wait_stream; int /*<<< orphan*/  wait_frame; TYPE_1__* v4ldev; scalar_t__ users; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEV_DISCONNECTED ; 
 int /*<<< orphan*/  DEV_MISCONFIGURED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct zc0301_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zc0301_dev_lock ; 
 int /*<<< orphan*/  zc0301_release_resources ; 
 int /*<<< orphan*/  FUNC8 (struct zc0301_device*) ; 

__attribute__((used)) static void FUNC9(struct usb_interface* intf)
{
	struct zc0301_device* cam;

	FUNC1(&zc0301_dev_lock);

	cam = FUNC4(intf);

	FUNC0(2, "Disconnecting %s...", cam->v4ldev->name);

	if (cam->users) {
		FUNC0(2, "Device /dev/video%d is open! Deregistration and "
		       "memory deallocation are deferred.",
		    cam->v4ldev->num);
		cam->state |= DEV_MISCONFIGURED;
		FUNC8(cam);
		cam->state |= DEV_DISCONNECTED;
		FUNC6(&cam->wait_frame);
		FUNC5(&cam->wait_stream);
	} else
		cam->state |= DEV_DISCONNECTED;

	FUNC7(&cam->wait_open);

	FUNC2(&cam->kref, zc0301_release_resources);

	FUNC3(&zc0301_dev_lock);
}