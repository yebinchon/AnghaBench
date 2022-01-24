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
struct uvc_xu_control_mapping {int v4l2_type; int menu_count; int /*<<< orphan*/  menu_info; int /*<<< orphan*/  data_type; int /*<<< orphan*/  offset; int /*<<< orphan*/  size; int /*<<< orphan*/  selector; int /*<<< orphan*/  entity; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct uvc_video_chain {int dummy; } ;
struct uvc_control_mapping {int v4l2_type; int menu_count; struct uvc_control_mapping* menu_info; int /*<<< orphan*/  data_type; int /*<<< orphan*/  offset; int /*<<< orphan*/  size; int /*<<< orphan*/  selector; int /*<<< orphan*/  entity; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UVC_TRACE_CONTROL ; 
#define  V4L2_CTRL_TYPE_BOOLEAN 131 
#define  V4L2_CTRL_TYPE_BUTTON 130 
#define  V4L2_CTRL_TYPE_INTEGER 129 
#define  V4L2_CTRL_TYPE_MENU 128 
 int /*<<< orphan*/  FUNC0 (struct uvc_control_mapping*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct uvc_control_mapping*) ; 
 struct uvc_control_mapping* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 struct uvc_control_mapping* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct uvc_video_chain*,struct uvc_control_mapping*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7(struct uvc_video_chain *chain,
	struct uvc_xu_control_mapping *xmap, int old)
{
	struct uvc_control_mapping *map;
	unsigned int size;
	int ret;

	map = FUNC3(sizeof *map, GFP_KERNEL);
	if (map == NULL)
		return -ENOMEM;

	map->id = xmap->id;
	FUNC4(map->name, xmap->name, sizeof map->name);
	FUNC4(map->entity, xmap->entity, sizeof map->entity);
	map->selector = xmap->selector;
	map->size = xmap->size;
	map->offset = xmap->offset;
	map->v4l2_type = xmap->v4l2_type;
	map->data_type = xmap->data_type;

	switch (xmap->v4l2_type) {
	case V4L2_CTRL_TYPE_INTEGER:
	case V4L2_CTRL_TYPE_BOOLEAN:
	case V4L2_CTRL_TYPE_BUTTON:
		break;

	case V4L2_CTRL_TYPE_MENU:
		if (old) {
			FUNC6(UVC_TRACE_CONTROL, "V4L2_CTRL_TYPE_MENU not "
				  "supported for UVCIOC_CTRL_MAP_OLD.\n");
			ret = -EINVAL;
			goto done;
		}

		size = xmap->menu_count * sizeof(*map->menu_info);
		map->menu_info = FUNC2(size, GFP_KERNEL);
		if (map->menu_info == NULL) {
			ret = -ENOMEM;
			goto done;
		}

		if (FUNC0(map->menu_info, xmap->menu_info, size)) {
			ret = -EFAULT;
			goto done;
		}

		map->menu_count = xmap->menu_count;
		break;

	default:
		FUNC6(UVC_TRACE_CONTROL, "Unsupported V4L2 control type "
			  "%u.\n", xmap->v4l2_type);
		ret = -EINVAL;
		goto done;
	}

	ret = FUNC5(chain, map);

done:
	FUNC1(map->menu_info);
	FUNC1(map);

	return ret;
}