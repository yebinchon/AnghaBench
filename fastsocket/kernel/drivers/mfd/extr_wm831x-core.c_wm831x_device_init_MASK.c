#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct wm831x_pdata {int (* pre_init ) (struct wm831x*) ;int (* post_init ) (struct wm831x*) ;scalar_t__ backlight; } ;
struct wm831x {int locked; TYPE_1__* dev; int /*<<< orphan*/  auxadc_lock; int /*<<< orphan*/  key_lock; int /*<<< orphan*/  io_lock; } ;
typedef  enum wm831x_parent { ____Placeholder_wm831x_parent } wm831x_parent ;
struct TYPE_7__ {struct wm831x_pdata* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EINVAL ; 
#define  WM8310 130 
#define  WM8311 129 
#define  WM8312 128 
 int /*<<< orphan*/  WM831X_PARENT_ID ; 
 int WM831X_PARENT_REV_MASK ; 
 int WM831X_PARENT_REV_SHIFT ; 
 int /*<<< orphan*/  WM831X_RESET_ID ; 
 int /*<<< orphan*/  WM831X_REVISION ; 
 int /*<<< orphan*/  WM831X_SECURITY_KEY ; 
 int /*<<< orphan*/  backlight_devs ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct wm831x*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wm831x*) ; 
 int FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct wm831x*) ; 
 int FUNC11 (struct wm831x*) ; 
 int /*<<< orphan*/  wm8310_devs ; 
 int /*<<< orphan*/  wm8311_devs ; 
 int /*<<< orphan*/  wm8312_devs ; 
 int /*<<< orphan*/  FUNC12 (struct wm831x*) ; 
 int FUNC13 (struct wm831x*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wm831x*) ; 
 int FUNC15 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct wm831x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct wm831x *wm831x, unsigned long id, int irq)
{
	struct wm831x_pdata *pdata = wm831x->dev->platform_data;
	int rev;
	enum wm831x_parent parent;
	int ret;

	FUNC9(&wm831x->io_lock);
	FUNC9(&wm831x->key_lock);
	FUNC9(&wm831x->auxadc_lock);
	FUNC4(wm831x->dev, wm831x);

	ret = FUNC15(wm831x, WM831X_PARENT_ID);
	if (ret < 0) {
		FUNC2(wm831x->dev, "Failed to read parent ID: %d\n", ret);
		goto err;
	}
	if (ret != 0x6204) {
		FUNC2(wm831x->dev, "Device is not a WM831x: ID %x\n", ret);
		ret = -EINVAL;
		goto err;
	}

	ret = FUNC15(wm831x, WM831X_REVISION);
	if (ret < 0) {
		FUNC2(wm831x->dev, "Failed to read revision: %d\n", ret);
		goto err;
	}
	rev = (ret & WM831X_PARENT_REV_MASK) >> WM831X_PARENT_REV_SHIFT;

	ret = FUNC15(wm831x, WM831X_RESET_ID);
	if (ret < 0) {
		FUNC2(wm831x->dev, "Failed to read device ID: %d\n", ret);
		goto err;
	}

	switch (ret) {
	case 0x8310:
		parent = WM8310;
		switch (rev) {
		case 0:
			FUNC3(wm831x->dev, "WM8310 revision %c\n",
				 'A' + rev);
			break;
		}
		break;

	case 0x8311:
		parent = WM8311;
		switch (rev) {
		case 0:
			FUNC3(wm831x->dev, "WM8311 revision %c\n",
				 'A' + rev);
			break;
		}
		break;

	case 0x8312:
		parent = WM8312;
		switch (rev) {
		case 0:
			FUNC3(wm831x->dev, "WM8312 revision %c\n",
				 'A' + rev);
			break;
		}
		break;

	case 0:
		/* Some engineering samples do not have the ID set,
		 * rely on the device being registered correctly.
		 * This will need revisiting for future devices with
		 * multiple dies.
		 */
		parent = id;
		switch (rev) {
		case 0:
			FUNC3(wm831x->dev, "WM831%d ES revision %c\n",
				 parent, 'A' + rev);
			break;
		}
		break;

	default:
		FUNC2(wm831x->dev, "Unknown WM831x device %04x\n", ret);
		ret = -EINVAL;
		goto err;
	}

	/* This will need revisiting in future but is OK for all
	 * current parts.
	 */
	if (parent != id)
		FUNC5(wm831x->dev, "Device was registered as a WM831%lu\n",
			 id);

	/* Bootstrap the user key */
	ret = FUNC15(wm831x, WM831X_SECURITY_KEY);
	if (ret < 0) {
		FUNC2(wm831x->dev, "Failed to read security key: %d\n", ret);
		goto err;
	}
	if (ret != 0) {
		FUNC5(wm831x->dev, "Security key had non-zero value %x\n",
			 ret);
		FUNC16(wm831x, WM831X_SECURITY_KEY, 0);
	}
	wm831x->locked = 1;

	if (pdata && pdata->pre_init) {
		ret = pdata->pre_init(wm831x);
		if (ret != 0) {
			FUNC2(wm831x->dev, "pre_init() failed: %d\n", ret);
			goto err;
		}
	}

	ret = FUNC13(wm831x, irq);
	if (ret != 0)
		goto err;

	/* The core device is up, instantiate the subdevices. */
	switch (parent) {
	case WM8310:
		ret = FUNC7(wm831x->dev, -1,
				      wm8310_devs, FUNC0(wm8310_devs),
				      NULL, 0);
		break;

	case WM8311:
		ret = FUNC7(wm831x->dev, -1,
				      wm8311_devs, FUNC0(wm8311_devs),
				      NULL, 0);
		break;

	case WM8312:
		ret = FUNC7(wm831x->dev, -1,
				      wm8312_devs, FUNC0(wm8312_devs),
				      NULL, 0);
		break;

	default:
		/* If this happens the bus probe function is buggy */
		FUNC1();
	}

	if (ret != 0) {
		FUNC2(wm831x->dev, "Failed to add children\n");
		goto err_irq;
	}

	if (pdata && pdata->backlight) {
		/* Treat errors as non-critical */
		ret = FUNC7(wm831x->dev, -1, backlight_devs,
				      FUNC0(backlight_devs), NULL, 0);
		if (ret < 0)
			FUNC2(wm831x->dev, "Failed to add backlight: %d\n",
				ret);
	}

	FUNC14(wm831x);

	if (pdata && pdata->post_init) {
		ret = pdata->post_init(wm831x);
		if (ret != 0) {
			FUNC2(wm831x->dev, "post_init() failed: %d\n", ret);
			goto err_irq;
		}
	}

	return 0;

err_irq:
	FUNC12(wm831x);
err:
	FUNC8(wm831x->dev);
	FUNC6(wm831x);
	return ret;
}