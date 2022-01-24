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
struct vino_channel_settings {int /*<<< orphan*/  capture_lock; int /*<<< orphan*/  fb_queue; scalar_t__ capturing; } ;
struct TYPE_2__ {int /*<<< orphan*/  vino_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct vino_channel_settings*) ; 
 int /*<<< orphan*/  FUNC4 (struct vino_channel_settings*) ; 
 TYPE_1__* vino_drvdata ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct vino_channel_settings *vcs)
{
	unsigned int incoming = 0, outgoing = 0, id;
	unsigned long flags, flags2;

	FUNC0("vino_capture_stop():\n");

	FUNC1(&vcs->capture_lock, flags);

	/* unset capturing to stop queue processing */
	vcs->capturing = 0;

	FUNC1(&vino_drvdata->vino_lock, flags2);

	FUNC4(vcs);
	FUNC3(vcs);

	FUNC2(&vino_drvdata->vino_lock, flags2);

	/* remove all items from the queue */
	if (FUNC5(&vcs->fb_queue, &incoming)) {
		FUNC0("vino_capture_stop(): "
			"vino_queue_get_incoming() failed\n");
		goto out;
	}
	while (incoming > 0) {
		FUNC8(&vcs->fb_queue);

		if (FUNC5(&vcs->fb_queue, &incoming)) {
			FUNC0("vino_capture_stop(): "
				"vino_queue_get_incoming() failed\n");
			goto out;
		}
	}

	if (FUNC6(&vcs->fb_queue, &outgoing)) {
		FUNC0("vino_capture_stop(): "
			"vino_queue_get_outgoing() failed\n");
		goto out;
	}
	while (outgoing > 0) {
		FUNC7(&vcs->fb_queue, &id);

		if (FUNC6(&vcs->fb_queue, &outgoing)) {
			FUNC0("vino_capture_stop(): "
				"vino_queue_get_outgoing() failed\n");
			goto out;
		}
	}

out:
	FUNC2(&vcs->capture_lock, flags);
}