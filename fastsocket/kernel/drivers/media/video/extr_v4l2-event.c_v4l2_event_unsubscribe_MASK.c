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
struct video_device_shadow {int /*<<< orphan*/  fh_lock; } ;
struct v4l2_subscribed_event {int /*<<< orphan*/  list; } ;
struct v4l2_fh {int /*<<< orphan*/  vdev; } ;
struct v4l2_event_subscription {scalar_t__ type; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ V4L2_EVENT_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subscribed_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct v4l2_subscribed_event* FUNC4 (struct v4l2_fh*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_fh*) ; 
 struct video_device_shadow* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct v4l2_fh *fh,
			   struct v4l2_event_subscription *sub)
{
	struct v4l2_subscribed_event *sev;
	unsigned long flags;
	struct video_device_shadow *shvdev = FUNC6(fh->vdev);

	if (sub->type == V4L2_EVENT_ALL) {
		FUNC5(fh);
		return 0;
	}

	if (!shvdev)
		return -ENOMEM;

	FUNC2(&shvdev->fh_lock, flags);

	sev = FUNC4(fh, sub->type);
	if (sev != NULL)
		FUNC1(&sev->list);

	FUNC3(&shvdev->fh_lock, flags);

	FUNC0(sev);

	return 0;
}