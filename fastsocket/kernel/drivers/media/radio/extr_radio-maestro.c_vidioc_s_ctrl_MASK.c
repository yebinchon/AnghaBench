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
typedef  scalar_t__ u16 ;
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;
struct maestro {int /*<<< orphan*/  lock; int /*<<< orphan*/  muted; scalar_t__ io; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IO_MASK ; 
 scalar_t__ STR_WREN ; 
#define  V4L2_CID_AUDIO_MUTE 128 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct maestro* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *priv,
					struct v4l2_control *ctrl)
{
	struct maestro *dev = FUNC6(file);
	u16 io = dev->io;
	u16 omask;

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		FUNC2(&dev->lock);
		omask = FUNC0(io + IO_MASK);
		FUNC4(~STR_WREN, io + IO_MASK);
		dev->muted = ctrl->value;
		FUNC4(dev->muted ? STR_WREN : 0, io);
		FUNC5(4);
		FUNC4(omask, io + IO_MASK);
		FUNC1(125);
		FUNC3(&dev->lock);
		return 0;
	}
	return -EINVAL;
}