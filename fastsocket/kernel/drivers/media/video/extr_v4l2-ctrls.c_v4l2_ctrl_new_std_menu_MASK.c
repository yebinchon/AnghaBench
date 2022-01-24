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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int V4L2_CTRL_TYPE_MENU ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char** FUNC2 (int /*<<< orphan*/ ) ; 
 struct v4l2_ctrl* FUNC3 (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const* const*,int /*<<< orphan*/ *) ; 

struct v4l2_ctrl *FUNC4(struct v4l2_ctrl_handler *hdl,
			const struct v4l2_ctrl_ops *ops,
			u32 id, s32 max, s32 mask, s32 def)
{
	const char * const *qmenu = FUNC2(id);
	const char *name;
	enum v4l2_ctrl_type type;
	s32 min;
	s32 step;
	u32 flags;

	FUNC1(id, &name, &type, &min, &max, &step, &def, &flags);
	if (type != V4L2_CTRL_TYPE_MENU) {
		FUNC0(hdl, -EINVAL);
		return NULL;
	}
	return FUNC3(hdl, ops, id, name, type,
				    0, max, mask, def, flags, qmenu, NULL);
}