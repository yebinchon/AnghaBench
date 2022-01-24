#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wm97xx_data {int x; int y; int p; } ;
struct wm97xx {int pen_is_down; int ts_reader_interval; int ts_reader_min_interval; int /*<<< orphan*/  codec_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  input_dev; TYPE_2__* codec; TYPE_1__* mach_ops; } ;
struct TYPE_4__ {int (* poll_touch ) (struct wm97xx*,struct wm97xx_data*) ;} ;
struct TYPE_3__ {int (* acc_pen_down ) (struct wm97xx*) ;scalar_t__ acc_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int HZ ; 
 int RC_AGAIN ; 
 int RC_PENDOWN ; 
 int RC_PENUP ; 
 int RC_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct wm97xx*) ; 
 int FUNC7 (struct wm97xx*,struct wm97xx_data*) ; 

__attribute__((used)) static int FUNC8(struct wm97xx *wm)
{
	struct wm97xx_data data;
	int rc;

	FUNC4(&wm->codec_mutex);

	if (wm->mach_ops && wm->mach_ops->acc_enabled)
		rc = wm->mach_ops->acc_pen_down(wm);
	else
		rc = wm->codec->poll_touch(wm, &data);

	if (rc & RC_PENUP) {
		if (wm->pen_is_down) {
			wm->pen_is_down = 0;
			FUNC0(wm->dev, "pen up\n");
			FUNC1(wm->input_dev, ABS_PRESSURE, 0);
			FUNC2(wm->input_dev, BTN_TOUCH, 0);
			FUNC3(wm->input_dev);
		} else if (!(rc & RC_AGAIN)) {
			/* We need high frequency updates only while
			* pen is down, the user never will be able to
			* touch screen faster than a few times per
			* second... On the other hand, when the user
			* is actively working with the touchscreen we
			* don't want to lose the quick response. So we
			* will slowly increase sleep time after the
			* pen is up and quicky restore it to ~one task
			* switch when pen is down again.
			*/
			if (wm->ts_reader_interval < HZ / 10)
				wm->ts_reader_interval++;
		}

	} else if (rc & RC_VALID) {
		FUNC0(wm->dev,
			"pen down: x=%x:%d, y=%x:%d, pressure=%x:%d\n",
			data.x >> 12, data.x & 0xfff, data.y >> 12,
			data.y & 0xfff, data.p >> 12, data.p & 0xfff);
		FUNC1(wm->input_dev, ABS_X, data.x & 0xfff);
		FUNC1(wm->input_dev, ABS_Y, data.y & 0xfff);
		FUNC1(wm->input_dev, ABS_PRESSURE, data.p & 0xfff);
		FUNC2(wm->input_dev, BTN_TOUCH, 1);
		FUNC3(wm->input_dev);
		wm->pen_is_down = 1;
		wm->ts_reader_interval = wm->ts_reader_min_interval;
	} else if (rc & RC_PENDOWN) {
		FUNC0(wm->dev, "pen down\n");
		wm->pen_is_down = 1;
		wm->ts_reader_interval = wm->ts_reader_min_interval;
	}

	FUNC5(&wm->codec_mutex);
	return rc;
}