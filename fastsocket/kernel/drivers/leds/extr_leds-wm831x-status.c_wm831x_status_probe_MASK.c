#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct wm831x_status_pdata {int default_src; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  blink_set; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
struct wm831x_status {int reg_val; int src; TYPE_1__ cdev; int /*<<< orphan*/  brightness; int /*<<< orphan*/  reg; int /*<<< orphan*/  value_lock; int /*<<< orphan*/  work; int /*<<< orphan*/  mutex; struct wm831x* wm831x; } ;
struct wm831x_pdata {scalar_t__* status; } ;
struct wm831x {TYPE_2__* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int id; TYPE_4__ dev; } ;
typedef  int /*<<< orphan*/  pdata ;
struct TYPE_8__ {struct wm831x_pdata* platform_data; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int WM831X_LED_MODE_MASK ; 
 int WM831X_LED_SRC_MASK ; 
 int WM831X_LED_SRC_SHIFT ; 
 int WM831X_STATUS_PRESERVE ; 
 int /*<<< orphan*/  dev_attr_src ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 struct wm831x* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,struct wm831x_status*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wm831x_status*) ; 
 struct wm831x_status* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct wm831x_status_pdata*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wm831x_status_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm831x_status_blink_set ; 
 int /*<<< orphan*/  wm831x_status_set ; 
 int /*<<< orphan*/  wm831x_status_work ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct wm831x *wm831x = FUNC3(pdev->dev.parent);
	struct wm831x_pdata *chip_pdata;
	struct wm831x_status_pdata pdata;
	struct wm831x_status *drvdata;
	struct resource *res;
	int id = pdev->id % FUNC0(chip_pdata->status);
	int ret;

	res = FUNC14(pdev, IORESOURCE_IO, 0);
	if (res == NULL) {
		FUNC2(&pdev->dev, "No I/O resource\n");
		ret = -EINVAL;
		goto err;
	}

	drvdata = FUNC8(sizeof(struct wm831x_status), GFP_KERNEL);
	if (!drvdata)
		return -ENOMEM;
	FUNC5(&pdev->dev, drvdata);

	drvdata->wm831x = wm831x;
	drvdata->reg = res->start;

	if (wm831x->dev->platform_data)
		chip_pdata = wm831x->dev->platform_data;
	else
		chip_pdata = NULL;

	FUNC12(&pdata, 0, sizeof(pdata));
	if (chip_pdata && chip_pdata->status[id])
		FUNC11(&pdata, chip_pdata->status[id], sizeof(pdata));
	else
		pdata.name = FUNC4(&pdev->dev);

	FUNC13(&drvdata->mutex);
	FUNC1(&drvdata->work, wm831x_status_work);
	FUNC15(&drvdata->value_lock);

	/* We cache the configuration register and read startup values
	 * from it. */
	drvdata->reg_val = FUNC16(wm831x, drvdata->reg);

	if (drvdata->reg_val & WM831X_LED_MODE_MASK)
		drvdata->brightness = LED_FULL;
	else
		drvdata->brightness = LED_OFF;

	/* Set a default source if configured, otherwise leave the
	 * current hardware setting.
	 */
	if (pdata.default_src == WM831X_STATUS_PRESERVE) {
		drvdata->src = drvdata->reg_val;
		drvdata->src &= WM831X_LED_SRC_MASK;
		drvdata->src >>= WM831X_LED_SRC_SHIFT;
	} else {
		drvdata->src = pdata.default_src - 1;
	}

	drvdata->cdev.name = pdata.name;
	drvdata->cdev.default_trigger = pdata.default_trigger;
	drvdata->cdev.brightness_set = wm831x_status_set;
	drvdata->cdev.blink_set = wm831x_status_blink_set;

	ret = FUNC9(wm831x->dev, &drvdata->cdev);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to register LED: %d\n", ret);
		goto err_led;
	}

	ret = FUNC6(drvdata->cdev.dev, &dev_attr_src);
	if (ret != 0)
		FUNC2(&pdev->dev,
			"No source control for LED: %d\n", ret);

	return 0;

err_led:
	FUNC10(&drvdata->cdev);
	FUNC7(drvdata);
err:
	return ret;
}