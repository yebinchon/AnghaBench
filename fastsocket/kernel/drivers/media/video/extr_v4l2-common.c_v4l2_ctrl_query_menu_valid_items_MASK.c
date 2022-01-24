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
typedef  scalar_t__ u32 ;
struct v4l2_querymenu {size_t index; int /*<<< orphan*/  name; scalar_t__ reserved; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ const V4L2_CTRL_MENU_IDS_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const* const,int) ; 
 char** FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct v4l2_querymenu *qmenu, const u32 *ids)
{
	const char * const *menu_items = FUNC1(qmenu->id);

	qmenu->reserved = 0;
	if (menu_items == NULL || ids == NULL)
		return -EINVAL;
	while (*ids != V4L2_CTRL_MENU_IDS_END) {
		if (*ids++ == qmenu->index) {
			FUNC0(qmenu->name, menu_items[qmenu->index],
					sizeof(qmenu->name));
			return 0;
		}
	}
	return -EINVAL;
}