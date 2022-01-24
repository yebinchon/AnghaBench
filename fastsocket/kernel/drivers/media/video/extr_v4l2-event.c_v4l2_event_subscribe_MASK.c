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
struct v4l2_subscribed_event {int /*<<< orphan*/  list; int /*<<< orphan*/  type; } ;
struct v4l2_fh {struct v4l2_events* events; int /*<<< orphan*/  vdev; } ;
struct v4l2_events {int /*<<< orphan*/  subscribed; } ;
struct v4l2_event_subscription {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subscribed_event*) ; 
 struct v4l2_subscribed_event* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC7 (struct v4l2_fh*,int /*<<< orphan*/ ) ; 
 struct video_device_shadow* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct v4l2_fh *fh,
			 struct v4l2_event_subscription *sub)
{
	struct v4l2_events *events = fh->events;
	struct v4l2_subscribed_event *sev;
	unsigned long flags;
	struct video_device_shadow *shvdev = FUNC8(fh->vdev);

	if (fh->events == NULL || !shvdev) {
		FUNC1(1);
		return -ENOMEM;
	}

	sev = FUNC3(sizeof(*sev), GFP_KERNEL);
	if (!sev)
		return -ENOMEM;

	FUNC5(&shvdev->fh_lock, flags);

	if (FUNC7(fh, sub->type) == NULL) {
		FUNC0(&sev->list);
		sev->type = sub->type;

		FUNC4(&sev->list, &events->subscribed);
		sev = NULL;
	}

	FUNC6(&shvdev->fh_lock, flags);

	FUNC2(sev);

	return 0;
}