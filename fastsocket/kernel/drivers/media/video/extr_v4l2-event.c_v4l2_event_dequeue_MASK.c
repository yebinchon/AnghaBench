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
struct video_device_shadow {scalar_t__ lock; } ;
struct v4l2_fh {int /*<<< orphan*/  vdev; struct v4l2_events* events; } ;
struct v4l2_events {scalar_t__ navailable; int /*<<< orphan*/  wait; } ;
struct v4l2_event {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct v4l2_fh*,struct v4l2_event*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct video_device_shadow* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(struct v4l2_fh *fh, struct v4l2_event *event,
		       int nonblocking)
{
	struct v4l2_events *events = fh->events;
	int ret;
	struct video_device_shadow *shvdev = FUNC3(fh->vdev);

	if (nonblocking)
		return FUNC0(fh, event);

	/* Release the vdev lock while waiting */
	if (shvdev && shvdev->lock)
		FUNC2(shvdev->lock);

	do {
		ret = FUNC4(events->wait,
					       events->navailable != 0);
		if (ret < 0)
			break;

		ret = FUNC0(fh, event);
	} while (ret == -ENOENT);

	if (shvdev && shvdev->lock)
		FUNC1(shvdev->lock);

	return ret;
}