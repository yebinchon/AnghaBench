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
struct vino_channel_settings {scalar_t__ channel; int /*<<< orphan*/  mutex; scalar_t__ users; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ VINO_CHANNEL_A ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vino_channel_settings* FUNC3 (struct file*) ; 
 int FUNC4 (struct vino_channel_settings*) ; 

__attribute__((used)) static int FUNC5(struct file *file)
{
	struct vino_channel_settings *vcs = FUNC3(file);
	int ret = 0;
	FUNC0("open(): channel = %c\n",
	       (vcs->channel == VINO_CHANNEL_A) ? 'A' : 'B');

	FUNC1(&vcs->mutex);

	if (vcs->users) {
		FUNC0("open(): driver busy\n");
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC4(vcs);
	if (ret) {
		FUNC0("open(): vino_acquire_input() failed\n");
		goto out;
	}

	vcs->users++;

 out:
	FUNC2(&vcs->mutex);

	FUNC0("open(): %s!\n", ret ? "failed" : "complete");

	return ret;
}