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
struct fb_info {struct broadsheetfb_par* par; } ;
struct broadsheetfb_par {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IRQF_DISABLED ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDY_GPIO_PIN ; 
 TYPE_1__* am300_device ; 
 int /*<<< orphan*/  am300_handle_irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct broadsheetfb_par*) ; 

__attribute__((used)) static int FUNC3(struct fb_info *info)
{
	int ret;
	struct broadsheetfb_par *par = info->par;

	ret = FUNC2(FUNC0(RDY_GPIO_PIN), am300_handle_irq,
				IRQF_DISABLED|IRQF_TRIGGER_RISING,
				"AM300", par);
	if (ret)
		FUNC1(&am300_device->dev, "request_irq failed: %d\n", ret);

	return ret;
}