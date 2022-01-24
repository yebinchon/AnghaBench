#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ext_control {unsigned int value; int /*<<< orphan*/  id; } ;
struct uvc_video_chain {TYPE_3__* dev; } ;
struct uvc_menu_info {unsigned int value; } ;
struct uvc_control_mapping {unsigned int (* get ) (struct uvc_control_mapping*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ v4l2_type; unsigned int menu_count; struct uvc_menu_info* menu_info; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  size; int /*<<< orphan*/  selector; } ;
struct uvc_control {int loaded; TYPE_2__ info; TYPE_1__* entity; } ;
struct TYPE_6__ {int /*<<< orphan*/  intfnum; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int UVC_CONTROL_GET_CUR ; 
 int /*<<< orphan*/  UVC_CTRL_DATA_CURRENT ; 
 int /*<<< orphan*/  UVC_GET_CUR ; 
 scalar_t__ V4L2_CTRL_TYPE_MENU ; 
 unsigned int FUNC0 (struct uvc_control_mapping*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uvc_control*,int /*<<< orphan*/ ) ; 
 struct uvc_control* FUNC2 (struct uvc_video_chain*,int /*<<< orphan*/ ,struct uvc_control_mapping**) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct uvc_video_chain *chain,
	struct v4l2_ext_control *xctrl)
{
	struct uvc_control *ctrl;
	struct uvc_control_mapping *mapping;
	struct uvc_menu_info *menu;
	unsigned int i;
	int ret;

	ctrl = FUNC2(chain, xctrl->id, &mapping);
	if (ctrl == NULL || (ctrl->info.flags & UVC_CONTROL_GET_CUR) == 0)
		return -EINVAL;

	if (!ctrl->loaded) {
		ret = FUNC3(chain->dev, UVC_GET_CUR, ctrl->entity->id,
				chain->dev->intfnum, ctrl->info.selector,
				FUNC1(ctrl, UVC_CTRL_DATA_CURRENT),
				ctrl->info.size);
		if (ret < 0)
			return ret;

		ctrl->loaded = 1;
	}

	xctrl->value = mapping->get(mapping, UVC_GET_CUR,
		FUNC1(ctrl, UVC_CTRL_DATA_CURRENT));

	if (mapping->v4l2_type == V4L2_CTRL_TYPE_MENU) {
		menu = mapping->menu_info;
		for (i = 0; i < mapping->menu_count; ++i, ++menu) {
			if (menu->value == xctrl->value) {
				xctrl->value = i;
				break;
			}
		}
	}

	return 0;
}