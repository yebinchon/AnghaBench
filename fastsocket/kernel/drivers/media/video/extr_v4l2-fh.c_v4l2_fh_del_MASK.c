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
struct v4l2_fh {int /*<<< orphan*/  list; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct video_device_shadow* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct v4l2_fh *fh)
{
	unsigned long flags;
	struct video_device_shadow *shvdev = FUNC3(fh->vdev);

	FUNC1(&shvdev->fh_lock, flags);
	FUNC0(&fh->list);
	FUNC2(&shvdev->fh_lock, flags);
}