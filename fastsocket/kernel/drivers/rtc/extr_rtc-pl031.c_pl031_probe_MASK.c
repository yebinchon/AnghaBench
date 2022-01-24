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
struct pl031_local {int /*<<< orphan*/  base; int /*<<< orphan*/  rtc; } ;
struct amba_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct amba_device {int /*<<< orphan*/ * irq; int /*<<< orphan*/  dev; TYPE_1__ res; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct amba_device*) ; 
 int FUNC3 (struct amba_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amba_device*,struct pl031_local*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pl031_local*) ; 
 struct pl031_local* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pl031_interrupt ; 
 int /*<<< orphan*/  pl031_ops ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct amba_device *adev, struct amba_id *id)
{
	int ret;
	struct pl031_local *ldata;

	ret = FUNC3(adev, NULL);
	if (ret)
		goto err_req;

	ldata = FUNC9(sizeof(struct pl031_local), GFP_KERNEL);
	if (!ldata) {
		ret = -ENOMEM;
		goto out;
	}

	ldata->base = FUNC6(adev->res.start, FUNC11(&adev->res));
	if (!ldata->base) {
		ret = -ENOMEM;
		goto out_no_remap;
	}

	FUNC4(adev, ldata);

	if (FUNC10(adev->irq[0], pl031_interrupt, IRQF_DISABLED,
			"rtc-pl031", ldata->rtc)) {
		ret = -EIO;
		goto out_no_irq;
	}

	ldata->rtc = FUNC12("pl031", &adev->dev, &pl031_ops,
					 THIS_MODULE);
	if (FUNC0(ldata->rtc)) {
		ret = FUNC1(ldata->rtc);
		goto out_no_rtc;
	}

	return 0;

out_no_rtc:
	FUNC5(adev->irq[0], ldata->rtc);
out_no_irq:
	FUNC7(ldata->base);
	FUNC4(adev, NULL);
out_no_remap:
	FUNC8(ldata);
out:
	FUNC2(adev);
err_req:
	return ret;
}