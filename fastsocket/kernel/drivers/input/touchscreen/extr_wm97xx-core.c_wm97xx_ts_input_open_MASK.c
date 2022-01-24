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
struct wm97xx {int ts_reader_min_interval; int ts_reader_interval; scalar_t__ pen_irq; int /*<<< orphan*/  ts_reader; int /*<<< orphan*/ * ts_workq; int /*<<< orphan*/  dev; scalar_t__ pen_is_down; int /*<<< orphan*/  pen_event_work; TYPE_2__* codec; TYPE_1__* mach_ops; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* dig_enable ) (struct wm97xx*,int) ;int /*<<< orphan*/  (* acc_enable ) (struct wm97xx*,int) ;} ;
struct TYPE_3__ {scalar_t__ acc_enabled; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct wm97xx* FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wm97xx*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wm97xx*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wm97xx*) ; 
 int /*<<< orphan*/  wm97xx_pen_irq_worker ; 
 int /*<<< orphan*/  wm97xx_ts_reader ; 

__attribute__((used)) static int FUNC9(struct input_dev *idev)
{
	struct wm97xx *wm = FUNC4(idev);

	wm->ts_workq = FUNC2("kwm97xx");
	if (wm->ts_workq == NULL) {
		FUNC3(wm->dev,
			"Failed to create workqueue\n");
		return -EINVAL;
	}

	/* start digitiser */
	if (wm->mach_ops && wm->mach_ops->acc_enabled)
		wm->codec->acc_enable(wm, 1);
	wm->codec->dig_enable(wm, 1);

	FUNC0(&wm->ts_reader, wm97xx_ts_reader);
	FUNC1(&wm->pen_event_work, wm97xx_pen_irq_worker);

	wm->ts_reader_min_interval = HZ >= 100 ? HZ / 100 : 1;
	if (wm->ts_reader_min_interval < 1)
		wm->ts_reader_min_interval = 1;
	wm->ts_reader_interval = wm->ts_reader_min_interval;

	wm->pen_is_down = 0;
	if (wm->pen_irq)
		FUNC8(wm);
	else
		FUNC3(wm->dev, "No IRQ specified\n");

	/* If we either don't have an interrupt for pen down events or
	 * failed to acquire it then we need to poll.
	 */
	if (wm->pen_irq == 0)
		FUNC5(wm->ts_workq, &wm->ts_reader,
				   wm->ts_reader_interval);

	return 0;
}