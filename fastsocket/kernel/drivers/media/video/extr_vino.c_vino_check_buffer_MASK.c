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
struct vino_framebuffer {int state; scalar_t__ data_format; int /*<<< orphan*/  state_lock; } ;
struct vino_channel_settings {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vino_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ VINO_DATA_FMT_RGB32 ; 
#define  VINO_FRAMEBUFFER_IN_USE 129 
#define  VINO_FRAMEBUFFER_READY 128 
 int VINO_FRAMEBUFFER_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct vino_channel_settings*) ; 
 int /*<<< orphan*/  FUNC4 (struct vino_framebuffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct vino_channel_settings*) ; 
 TYPE_1__* vino_drvdata ; 
 scalar_t__ vino_pixel_conversion ; 
 int /*<<< orphan*/  FUNC6 (struct vino_framebuffer*) ; 

__attribute__((used)) static int FUNC7(struct vino_channel_settings *vcs,
			     struct vino_framebuffer *fb)
{
	int err = 0;
	unsigned long flags;

	FUNC0("vino_check_buffer():\n");

	FUNC1(&fb->state_lock, flags);
	switch (fb->state) {
	case VINO_FRAMEBUFFER_IN_USE:
		err = -EIO;
		break;
	case VINO_FRAMEBUFFER_READY:
		FUNC6(fb);
		fb->state = VINO_FRAMEBUFFER_UNUSED;
		break;
	default:
		err = -EINVAL;
	}
	FUNC2(&fb->state_lock, flags);

	if (!err) {
		if (vino_pixel_conversion
		    && (fb->data_format == VINO_DATA_FMT_RGB32)) {
			FUNC4(fb);
		}
	} else if (err && (err != -EINVAL)) {
		FUNC0("vino_check_buffer(): buffer not ready\n");

		FUNC1(&vino_drvdata->vino_lock, flags);
		FUNC5(vcs);
		FUNC3(vcs);
		FUNC2(&vino_drvdata->vino_lock, flags);
	}

	return err;
}