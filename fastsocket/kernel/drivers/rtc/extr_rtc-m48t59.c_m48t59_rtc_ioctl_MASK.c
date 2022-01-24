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
struct TYPE_2__ {struct m48t59_plat_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct m48t59_private {int /*<<< orphan*/  lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  M48T59_INTR ; 
 int M48T59_INTR_AFE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
#define  RTC_AIE_OFF 129 
#define  RTC_AIE_ON 128 
 struct m48t59_private* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct platform_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, unsigned int cmd,
			unsigned long arg)
{
	struct platform_device *pdev = FUNC4(dev);
	struct m48t59_plat_data *pdata = pdev->dev.platform_data;
	struct m48t59_private *m48t59 = FUNC1(pdev);
	unsigned long flags;
	int ret = 0;

	FUNC2(&m48t59->lock, flags);
	switch (cmd) {
	case RTC_AIE_OFF:	/* alarm interrupt off */
		FUNC0(0x00, M48T59_INTR);
		break;
	case RTC_AIE_ON:	/* alarm interrupt on */
		FUNC0(M48T59_INTR_AFE, M48T59_INTR);
		break;
	default:
		ret = -ENOIOCTLCMD;
		break;
	}
	FUNC3(&m48t59->lock, flags);

	return ret;
}