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
struct TYPE_9__ {int /*<<< orphan*/  state; } ;
struct TYPE_7__ {int /*<<< orphan*/  phone; } ;
struct Channel {int /*<<< orphan*/  dial_timer; TYPE_4__ fi; TYPE_1__ setup; } ;
struct TYPE_8__ {int* para; } ;
typedef  TYPE_2__ capi_msg ;

/* Variables and functions */
 int /*<<< orphan*/  EV_RESUME ; 
 int /*<<< orphan*/  EV_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  ST_NULL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC4(struct Channel *chanp, capi_msg *cm) {
	if ((cm->para[0] != 3) || (cm->para[1] != 0))
		return;
	if (cm->para[2]<3)
		return;
	if (cm->para[4] != 0)
		return;
	switch(cm->para[3]) {
		case 4: /* Suspend */
			FUNC3(chanp->setup.phone, &cm->para[5], cm->para[5] +1);
			FUNC2(&chanp->fi, EV_SUSPEND, cm);
			break;
		case 5: /* Resume */
			FUNC3(chanp->setup.phone, &cm->para[5], cm->para[5] +1);
			if (chanp->fi.state == ST_NULL) {
				FUNC2(&chanp->fi, EV_RESUME, cm);
			} else {
				FUNC1(&chanp->dial_timer, 72);
				FUNC0(&chanp->dial_timer, 80, EV_RESUME, cm, 73);
			}
			break;
	}
}