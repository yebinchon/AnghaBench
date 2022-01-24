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
typedef  int u16 ;
struct wm97xx {scalar_t__ id; TYPE_2__* codec; TYPE_1__* mach_ops; int /*<<< orphan*/  ts_workq; int /*<<< orphan*/  ts_reader; int /*<<< orphan*/  pen_event_work; scalar_t__ pen_is_down; scalar_t__ pen_irq; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* acc_enable ) (struct wm97xx*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* dig_enable ) (struct wm97xx*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int irq_gpio; scalar_t__ acc_enabled; int /*<<< orphan*/  (* irq_enable ) (struct wm97xx*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_MISC_AFE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ WM9705_ID2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct wm97xx*) ; 
 struct wm97xx* FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct wm97xx*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wm97xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wm97xx*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct wm97xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wm97xx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct input_dev *idev)
{
	struct wm97xx *wm = FUNC5(idev);
	u16 reg;

	if (wm->pen_irq) {
		/* Return the interrupt to GPIO usage (disabling it) */
		if (wm->id != WM9705_ID2) {
			FUNC0(!wm->mach_ops->irq_gpio);
			reg = FUNC9(wm, AC97_MISC_AFE);
			FUNC10(wm, AC97_MISC_AFE,
					 reg | wm->mach_ops->irq_gpio);
		}

		FUNC4(wm->pen_irq, wm);
	}

	wm->pen_is_down = 0;

	/* Balance out interrupt disables/enables */
	if (FUNC2(&wm->pen_event_work))
		wm->mach_ops->irq_enable(wm, 1);

	/* ts_reader rearms itself so we need to explicitly stop it
	 * before we destroy the workqueue.
	 */
	FUNC1(&wm->ts_reader);

	FUNC3(wm->ts_workq);

	/* stop digitiser */
	wm->codec->dig_enable(wm, 0);
	if (wm->mach_ops && wm->mach_ops->acc_enabled)
		wm->codec->acc_enable(wm, 0);
}