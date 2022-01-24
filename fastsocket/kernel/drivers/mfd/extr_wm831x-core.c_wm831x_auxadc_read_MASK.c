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
struct wm831x {int /*<<< orphan*/  auxadc_lock; int /*<<< orphan*/  dev; } ;
typedef  enum wm831x_auxadc { ____Placeholder_wm831x_auxadc } wm831x_auxadc ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  WM831X_AUXADC_CONTROL ; 
 int /*<<< orphan*/  WM831X_AUXADC_DATA ; 
 int /*<<< orphan*/  WM831X_AUXADC_SOURCE ; 
 int WM831X_AUX_CAL ; 
 int WM831X_AUX_CVT_ENA ; 
 int WM831X_AUX_DATA_MASK ; 
 int WM831X_AUX_DATA_SRC_MASK ; 
 int WM831X_AUX_DATA_SRC_SHIFT ; 
 int WM831X_AUX_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wm831x*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct wm831x*,int /*<<< orphan*/ ,int,int) ; 

int FUNC7(struct wm831x *wm831x, enum wm831x_auxadc input)
{
	int tries = 10;
	int ret, src;

	FUNC2(&wm831x->auxadc_lock);

	ret = FUNC6(wm831x, WM831X_AUXADC_CONTROL,
			      WM831X_AUX_ENA, WM831X_AUX_ENA);
	if (ret < 0) {
		FUNC0(wm831x->dev, "Failed to enable AUXADC: %d\n", ret);
		goto out;
	}

	/* We force a single source at present */
	src = input;
	ret = FUNC5(wm831x, WM831X_AUXADC_SOURCE,
			       1 << src);
	if (ret < 0) {
		FUNC0(wm831x->dev, "Failed to set AUXADC source: %d\n", ret);
		goto out;
	}

	ret = FUNC6(wm831x, WM831X_AUXADC_CONTROL,
			      WM831X_AUX_CVT_ENA, WM831X_AUX_CVT_ENA);
	if (ret < 0) {
		FUNC0(wm831x->dev, "Failed to start AUXADC: %d\n", ret);
		goto disable;
	}

	do {
		FUNC1(1);

		ret = FUNC4(wm831x, WM831X_AUXADC_CONTROL);
		if (ret < 0)
			ret = WM831X_AUX_CVT_ENA;
	} while ((ret & WM831X_AUX_CVT_ENA) && --tries);

	if (ret & WM831X_AUX_CVT_ENA) {
		FUNC0(wm831x->dev, "Timed out reading AUXADC\n");
		ret = -EBUSY;
		goto disable;
	}

	ret = FUNC4(wm831x, WM831X_AUXADC_DATA);
	if (ret < 0) {
		FUNC0(wm831x->dev, "Failed to read AUXADC data: %d\n", ret);
	} else {
		src = ((ret & WM831X_AUX_DATA_SRC_MASK)
		       >> WM831X_AUX_DATA_SRC_SHIFT) - 1;

		if (src == 14)
			src = WM831X_AUX_CAL;

		if (src != input) {
			FUNC0(wm831x->dev, "Data from source %d not %d\n",
				src, input);
			ret = -EINVAL;
		} else {
			ret &= WM831X_AUX_DATA_MASK;
		}
	}

disable:
	FUNC6(wm831x, WM831X_AUXADC_CONTROL, WM831X_AUX_ENA, 0);
out:
	FUNC3(&wm831x->auxadc_lock);
	return ret;
}