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
struct pl031_local {int /*<<< orphan*/  base; int /*<<< orphan*/  rtc; } ;
struct amba_device {int /*<<< orphan*/ * irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amba_device*,int /*<<< orphan*/ *) ; 
 struct pl031_local* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pl031_local*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct amba_device *adev)
{
	struct pl031_local *ldata = FUNC2(&adev->dev);

	FUNC1(adev, NULL);
	FUNC3(adev->irq[0], ldata->rtc);
	FUNC6(ldata->rtc);
	FUNC4(ldata->base);
	FUNC5(ldata);
	FUNC0(adev);

	return 0;
}