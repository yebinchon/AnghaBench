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
struct channel_subsystem {int cm_enabled; void* cub_addr2; void* cub_addr1; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct channel_subsystem*,int,void*) ; 
 int FUNC1 (struct channel_subsystem*) ; 
 int /*<<< orphan*/  FUNC2 (struct channel_subsystem*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(struct channel_subsystem *css, int enable)
{
	void  *secm_area;
	int ret;

	secm_area = (void *)FUNC4(GFP_KERNEL |  GFP_DMA);
	if (!secm_area)
		return -ENOMEM;

	if (enable && !css->cm_enabled) {
		css->cub_addr1 = (void *)FUNC4(GFP_KERNEL | GFP_DMA);
		css->cub_addr2 = (void *)FUNC4(GFP_KERNEL | GFP_DMA);
		if (!css->cub_addr1 || !css->cub_addr2) {
			FUNC3((unsigned long)css->cub_addr1);
			FUNC3((unsigned long)css->cub_addr2);
			FUNC3((unsigned long)secm_area);
			return -ENOMEM;
		}
	}
	ret = FUNC0(css, enable, secm_area);
	if (!ret) {
		css->cm_enabled = enable;
		if (css->cm_enabled) {
			ret = FUNC1(css);
			if (ret) {
				FUNC5(secm_area, 0, PAGE_SIZE);
				FUNC0(css, 0, secm_area);
				css->cm_enabled = 0;
			}
		} else
			FUNC2(css);
	}
	if (!css->cm_enabled) {
		FUNC3((unsigned long)css->cub_addr1);
		FUNC3((unsigned long)css->cub_addr2);
	}
	FUNC3((unsigned long)secm_area);
	return ret;
}