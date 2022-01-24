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
struct v4l2_kevent {int /*<<< orphan*/  list; } ;
struct v4l2_fh {int /*<<< orphan*/  vdev; struct v4l2_events* events; } ;
struct v4l2_events {unsigned int nallocated; int /*<<< orphan*/  free; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct v4l2_kevent* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct video_device_shadow* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct v4l2_fh *fh, unsigned int n)
{
	struct v4l2_events *events = fh->events;
	unsigned long flags;
	struct video_device_shadow *shvdev = FUNC5(fh->vdev);

	if (!events || !shvdev) {
		FUNC0(1);
		return -ENOMEM;
	}

	while (events->nallocated < n) {
		struct v4l2_kevent *kev;

		kev = FUNC1(sizeof(*kev), GFP_KERNEL);
		if (kev == NULL)
			return -ENOMEM;

		FUNC3(&shvdev->fh_lock, flags);
		FUNC2(&kev->list, &events->free);
		events->nallocated++;
		FUNC4(&shvdev->fh_lock, flags);
	}

	return 0;
}