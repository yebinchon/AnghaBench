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
struct vino_channel_settings {int /*<<< orphan*/  mutex; int /*<<< orphan*/  fb_queue; int /*<<< orphan*/  users; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vino_channel_settings* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct vino_channel_settings*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vino_channel_settings*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct vino_channel_settings *vcs = FUNC3(file);
	FUNC0("close():\n");

	FUNC1(&vcs->mutex);

	vcs->users--;

	if (!vcs->users) {
		FUNC6(vcs);

		/* stop DMA and free buffers */
		FUNC4(vcs);
		FUNC5(&vcs->fb_queue);
	}

	FUNC2(&vcs->mutex);

	return 0;
}