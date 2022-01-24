#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct wm97xx_pdata {int dummy; } ;
struct wm97xx {int id; TYPE_10__* input_dev; TYPE_6__* battery_dev; TYPE_6__* touch_dev; void** gpio; TYPE_3__* codec; struct device* dev; int /*<<< orphan*/  variant; int /*<<< orphan*/  ac97; int /*<<< orphan*/  codec_mutex; } ;
struct device {struct wm97xx_pdata* platform_data; } ;
struct TYPE_18__ {struct wm97xx_pdata* platform_data; struct device* parent; } ;
struct TYPE_20__ {TYPE_2__ dev; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* phy_init ) (struct wm97xx*) ;} ;
struct TYPE_17__ {struct device* parent; } ;
struct TYPE_16__ {char* name; char* phys; TYPE_1__ dev; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  AC97_GPIO_CFG ; 
 int /*<<< orphan*/  AC97_GPIO_POLARITY ; 
 int /*<<< orphan*/  AC97_GPIO_STATUS ; 
 int /*<<< orphan*/  AC97_GPIO_STICKY ; 
 int /*<<< orphan*/  AC97_GPIO_WAKEUP ; 
 int /*<<< orphan*/  AC97_MISC_AFE ; 
 int /*<<< orphan*/  AC97_VENDOR_ID1 ; 
 int /*<<< orphan*/  AC97_VENDOR_ID2 ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WM97XX_ID1 ; 
 int /*<<< orphan*/  WM97xx_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * abs_p ; 
 int /*<<< orphan*/ * abs_x ; 
 int /*<<< orphan*/ * abs_y ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct wm97xx*) ; 
 TYPE_10__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*) ; 
 int FUNC6 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*,struct wm97xx*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC10 (struct wm97xx*) ; 
 struct wm97xx* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_6__*) ; 
 void* FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,struct wm97xx*) ; 
 int /*<<< orphan*/  FUNC18 (struct wm97xx*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 TYPE_3__ wm9705_codec ; 
 TYPE_3__ wm9712_codec ; 
 TYPE_3__ wm9713_codec ; 
 void* FUNC20 (struct wm97xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm97xx_ts_input_close ; 
 int /*<<< orphan*/  wm97xx_ts_input_open ; 

__attribute__((used)) static int FUNC21(struct device *dev)
{
	struct wm97xx *wm;
	struct wm97xx_pdata *pdata = dev->platform_data;
	int ret = 0, id = 0;

	wm = FUNC11(sizeof(struct wm97xx), GFP_KERNEL);
	if (!wm)
		return -ENOMEM;
	FUNC12(&wm->codec_mutex);

	wm->dev = dev;
	FUNC3(dev, wm);
	wm->ac97 = FUNC19(dev);

	/* check that we have a supported codec */
	id = FUNC20(wm, AC97_VENDOR_ID1);
	if (id != WM97XX_ID1) {
		FUNC1(dev, "Device with vendor %04x is not a wm97xx\n", id);
		ret = -ENODEV;
		goto alloc_err;
	}

	wm->id = FUNC20(wm, AC97_VENDOR_ID2);

	wm->variant = WM97xx_GENERIC;

	FUNC2(wm->dev, "detected a wm97%02x codec\n", wm->id & 0xff);

	switch (wm->id & 0xff) {
#ifdef CONFIG_TOUCHSCREEN_WM9705
	case 0x05:
		wm->codec = &wm9705_codec;
		break;
#endif
#ifdef CONFIG_TOUCHSCREEN_WM9712
	case 0x12:
		wm->codec = &wm9712_codec;
		break;
#endif
#ifdef CONFIG_TOUCHSCREEN_WM9713
	case 0x13:
		wm->codec = &wm9713_codec;
		break;
#endif
	default:
		FUNC1(wm->dev, "Support for wm97%02x not compiled in.\n",
			wm->id & 0xff);
		ret = -ENODEV;
		goto alloc_err;
	}

	/* set up physical characteristics */
	wm->codec->phy_init(wm);

	/* load gpio cache */
	wm->gpio[0] = FUNC20(wm, AC97_GPIO_CFG);
	wm->gpio[1] = FUNC20(wm, AC97_GPIO_POLARITY);
	wm->gpio[2] = FUNC20(wm, AC97_GPIO_STICKY);
	wm->gpio[3] = FUNC20(wm, AC97_GPIO_WAKEUP);
	wm->gpio[4] = FUNC20(wm, AC97_GPIO_STATUS);
	wm->gpio[5] = FUNC20(wm, AC97_MISC_AFE);

	wm->input_dev = FUNC4();
	if (wm->input_dev == NULL) {
		ret = -ENOMEM;
		goto alloc_err;
	}

	/* set up touch configuration */
	wm->input_dev->name = "wm97xx touchscreen";
	wm->input_dev->phys = "wm97xx";
	wm->input_dev->open = wm97xx_ts_input_open;
	wm->input_dev->close = wm97xx_ts_input_close;

	FUNC0(EV_ABS, wm->input_dev->evbit);
	FUNC0(EV_KEY, wm->input_dev->evbit);
	FUNC0(BTN_TOUCH, wm->input_dev->keybit);

	FUNC7(wm->input_dev, ABS_X, abs_x[0], abs_x[1],
			     abs_x[2], 0);
	FUNC7(wm->input_dev, ABS_Y, abs_y[0], abs_y[1],
			     abs_y[2], 0);
	FUNC7(wm->input_dev, ABS_PRESSURE, abs_p[0], abs_p[1],
			     abs_p[2], 0);

	FUNC8(wm->input_dev, wm);
	wm->input_dev->dev.parent = dev;

	ret = FUNC6(wm->input_dev);
	if (ret < 0)
		goto dev_alloc_err;

	/* register our battery device */
	wm->battery_dev = FUNC14("wm97xx-battery", -1);
	if (!wm->battery_dev) {
		ret = -ENOMEM;
		goto batt_err;
	}
	FUNC17(wm->battery_dev, wm);
	wm->battery_dev->dev.parent = dev;
	wm->battery_dev->dev.platform_data = pdata;
	ret = FUNC13(wm->battery_dev);
	if (ret < 0)
		goto batt_reg_err;

	/* register our extended touch device (for machine specific
	 * extensions) */
	wm->touch_dev = FUNC14("wm97xx-touch", -1);
	if (!wm->touch_dev) {
		ret = -ENOMEM;
		goto touch_err;
	}
	FUNC17(wm->touch_dev, wm);
	wm->touch_dev->dev.parent = dev;
	wm->touch_dev->dev.platform_data = pdata;
	ret = FUNC13(wm->touch_dev);
	if (ret < 0)
		goto touch_reg_err;

	return ret;

 touch_reg_err:
	FUNC15(wm->touch_dev);
 touch_err:
	FUNC16(wm->battery_dev);
	wm->battery_dev = NULL;
 batt_reg_err:
	FUNC15(wm->battery_dev);
 batt_err:
	FUNC9(wm->input_dev);
	wm->input_dev = NULL;
 dev_alloc_err:
	FUNC5(wm->input_dev);
 alloc_err:
	FUNC10(wm);

	return ret;
}