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
struct brcms_timer {struct brcms_timer* name; struct brcms_timer* next; } ;
struct TYPE_2__ {scalar_t__ fw_cnt; } ;
struct brcms_info {struct brcms_timer* timers; int /*<<< orphan*/  callbacks; int /*<<< orphan*/ * pub; int /*<<< orphan*/ * wlc; int /*<<< orphan*/  tasklet; scalar_t__ irq; int /*<<< orphan*/  ucode; TYPE_1__ fw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct brcms_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct brcms_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_timer*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct brcms_info *wl)
{
	struct brcms_timer *t, *next;

	/* free ucode data */
	if (wl->fw.fw_cnt)
		FUNC4(&wl->ucode);
	if (wl->irq)
		FUNC5(wl->irq, wl);

	/* kill dpc */
	FUNC8(&wl->tasklet);

	if (wl->pub) {
		FUNC3(wl->pub);
		FUNC2(wl->pub, "linux", wl);
	}

	/* free common resources */
	if (wl->wlc) {
		FUNC1(wl->wlc);
		wl->wlc = NULL;
		wl->pub = NULL;
	}

	/* virtual interface deletion is deferred so we cannot spinwait */

	/* wait for all pending callbacks to complete */
	while (FUNC0(&wl->callbacks) > 0)
		FUNC7();

	/* free timers */
	for (t = wl->timers; t; t = next) {
		next = t->next;
#ifdef DEBUG
		kfree(t->name);
#endif
		FUNC6(t);
	}
}