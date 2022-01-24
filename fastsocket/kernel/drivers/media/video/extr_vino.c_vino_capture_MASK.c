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
struct vino_framebuffer {scalar_t__ state; int /*<<< orphan*/  state_lock; } ;
struct vino_channel_settings {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vino_lock; int /*<<< orphan*/  input_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ VINO_FRAMEBUFFER_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct vino_channel_settings*,struct vino_framebuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct vino_channel_settings*) ; 
 TYPE_1__* vino_drvdata ; 

__attribute__((used)) static int FUNC4(struct vino_channel_settings *vcs,
			struct vino_framebuffer *fb)
{
	int err = 0;
	unsigned long flags, flags2;

	FUNC0(&fb->state_lock, flags);

	if (fb->state == VINO_FRAMEBUFFER_IN_USE)
		err = -EBUSY;
	fb->state = VINO_FRAMEBUFFER_IN_USE;

	FUNC1(&fb->state_lock, flags);

	if (err)
		return err;

	FUNC0(&vino_drvdata->vino_lock, flags);
	FUNC0(&vino_drvdata->input_lock, flags2);

	FUNC2(vcs, fb);
	FUNC3(vcs);

	FUNC1(&vino_drvdata->input_lock, flags2);
	FUNC1(&vino_drvdata->vino_lock, flags);

	return err;
}