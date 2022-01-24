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
typedef  scalar_t__ u32 ;
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrls; scalar_t__ error; } ;
struct TYPE_2__ {char* string; scalar_t__ val; } ;
struct v4l2_ctrl {char const* name; int type; char const* const* qmenu; char* string; int /*<<< orphan*/  node; scalar_t__ minimum; TYPE_1__ cur; scalar_t__ default_value; scalar_t__ val; void* priv; scalar_t__ step; scalar_t__ maximum; scalar_t__ flags; scalar_t__ id; struct v4l2_ctrl_ops const* ops; struct v4l2_ctrl_handler* handler; } ;
typedef  scalar_t__ s32 ;
typedef  enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ V4L2_CID_PRIVATE_BASE ; 
 scalar_t__ V4L2_CTRL_FLAG_READ_ONLY ; 
 scalar_t__ V4L2_CTRL_FLAG_WRITE_ONLY ; 
 int V4L2_CTRL_TYPE_BOOLEAN ; 
 int V4L2_CTRL_TYPE_BUTTON ; 
 int V4L2_CTRL_TYPE_CTRL_CLASS ; 
 int V4L2_CTRL_TYPE_INTEGER ; 
 int V4L2_CTRL_TYPE_MENU ; 
 int V4L2_CTRL_TYPE_STRING ; 
 scalar_t__ FUNC1 (struct v4l2_ctrl_handler*,struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl*) ; 
 struct v4l2_ctrl* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct v4l2_ctrl *FUNC9(struct v4l2_ctrl_handler *hdl,
			const struct v4l2_ctrl_ops *ops,
			u32 id, const char *name, enum v4l2_ctrl_type type,
			s32 min, s32 max, u32 step, s32 def,
			u32 flags, const char * const *qmenu, void *priv)
{
	struct v4l2_ctrl *ctrl;
	unsigned sz_extra = 0;

	if (hdl->error)
		return NULL;

	/* Sanity checks */
	if (id == 0 || name == NULL || id >= V4L2_CID_PRIVATE_BASE ||
	    max < min ||
	    (type == V4L2_CTRL_TYPE_INTEGER && step == 0) ||
	    (type == V4L2_CTRL_TYPE_MENU && qmenu == NULL) ||
	    (type == V4L2_CTRL_TYPE_STRING && max == 0)) {
		FUNC2(hdl, -ERANGE);
		return NULL;
	}
	if ((type == V4L2_CTRL_TYPE_INTEGER ||
	     type == V4L2_CTRL_TYPE_MENU ||
	     type == V4L2_CTRL_TYPE_BOOLEAN) &&
	    (def < min || def > max)) {
		FUNC2(hdl, -ERANGE);
		return NULL;
	}

	if (type == V4L2_CTRL_TYPE_BUTTON)
		flags |= V4L2_CTRL_FLAG_WRITE_ONLY;
	else if (type == V4L2_CTRL_TYPE_CTRL_CLASS)
		flags |= V4L2_CTRL_FLAG_READ_ONLY;
	else if (type == V4L2_CTRL_TYPE_STRING)
		sz_extra += 2 * (max + 1);

	ctrl = FUNC4(sizeof(*ctrl) + sz_extra, GFP_KERNEL);
	if (ctrl == NULL) {
		FUNC2(hdl, -ENOMEM);
		return NULL;
	}

	FUNC0(&ctrl->node);
	ctrl->handler = hdl;
	ctrl->ops = ops;
	ctrl->id = id;
	ctrl->name = name;
	ctrl->type = type;
	ctrl->flags = flags;
	ctrl->minimum = min;
	ctrl->maximum = max;
	ctrl->step = step;
	ctrl->qmenu = qmenu;
	ctrl->priv = priv;
	ctrl->cur.val = ctrl->val = ctrl->default_value = def;

	if (ctrl->type == V4L2_CTRL_TYPE_STRING) {
		ctrl->cur.string = (char *)&ctrl[1] + sz_extra - (max + 1);
		ctrl->string = (char *)&ctrl[1] + sz_extra - 2 * (max + 1);
		if (ctrl->minimum)
			FUNC6(ctrl->cur.string, ' ', ctrl->minimum);
	}
	if (FUNC1(hdl, ctrl)) {
		FUNC3(ctrl);
		return NULL;
	}
	FUNC7(&hdl->lock);
	FUNC5(&ctrl->node, &hdl->ctrls);
	FUNC8(&hdl->lock);
	return ctrl;
}