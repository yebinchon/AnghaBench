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
struct subchannel_id {int dummy; } ;
struct subchannel {int /*<<< orphan*/  todo_work; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct subchannel* FUNC0 (int) ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct subchannel*,struct subchannel_id) ; 
 int /*<<< orphan*/  css_sch_todo ; 
 int /*<<< orphan*/  FUNC3 (struct subchannel*) ; 
 struct subchannel* FUNC4 (int,int) ; 

__attribute__((used)) static struct subchannel *
FUNC5(struct subchannel_id schid)
{
	struct subchannel *sch;
	int ret;

	sch = FUNC4 (sizeof (*sch), GFP_KERNEL | GFP_DMA);
	if (sch == NULL)
		return FUNC0(-ENOMEM);
	ret = FUNC2 (sch, schid);
	if (ret < 0) {
		FUNC3(sch);
		return FUNC0(ret);
	}
	FUNC1(&sch->todo_work, css_sch_todo);
	return sch;
}