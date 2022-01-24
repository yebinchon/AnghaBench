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
typedef  void* u32 ;
struct v4l2_querymenu {size_t index; int /*<<< orphan*/  name; void* id; } ;
struct uvc_video_chain {int /*<<< orphan*/  ctrl_mutex; } ;
struct uvc_menu_info {int /*<<< orphan*/  name; } ;
struct uvc_control_mapping {scalar_t__ v4l2_type; size_t menu_count; struct uvc_menu_info* menu_info; } ;
struct uvc_control {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERESTARTSYS ; 
 scalar_t__ V4L2_CTRL_TYPE_MENU ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_querymenu*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct uvc_control* FUNC4 (struct uvc_video_chain*,void*,struct uvc_control_mapping**) ; 

int FUNC5(struct uvc_video_chain *chain,
	struct v4l2_querymenu *query_menu)
{
	struct uvc_menu_info *menu_info;
	struct uvc_control_mapping *mapping;
	struct uvc_control *ctrl;
	u32 index = query_menu->index;
	u32 id = query_menu->id;
	int ret;

	FUNC0(query_menu, 0, sizeof(*query_menu));
	query_menu->id = id;
	query_menu->index = index;

	ret = FUNC1(&chain->ctrl_mutex);
	if (ret < 0)
		return -ERESTARTSYS;

	ctrl = FUNC4(chain, query_menu->id, &mapping);
	if (ctrl == NULL || mapping->v4l2_type != V4L2_CTRL_TYPE_MENU) {
		ret = -EINVAL;
		goto done;
	}

	if (query_menu->index >= mapping->menu_count) {
		ret = -EINVAL;
		goto done;
	}

	menu_info = &mapping->menu_info[query_menu->index];
	FUNC3(query_menu->name, menu_info->name, sizeof query_menu->name);

done:
	FUNC2(&chain->ctrl_mutex);
	return ret;
}