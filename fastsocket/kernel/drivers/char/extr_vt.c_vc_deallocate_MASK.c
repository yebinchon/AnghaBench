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
struct vt_notifier_param {struct vc_data* vc; } ;
struct vc_data {struct vc_data* vc_screenbuf; TYPE_1__* vc_sw; int /*<<< orphan*/  vt_pid; } ;
struct TYPE_4__ {struct vc_data* d; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* con_deinit ) (struct vc_data*) ;} ;

/* Variables and functions */
 unsigned int MIN_NR_CONSOLES ; 
 int /*<<< orphan*/  VT_DEALLOCATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vt_notifier_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*) ; 
 TYPE_2__* vc_cons ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  vt_notifier_list ; 

void FUNC8(unsigned int currcons)
{
	FUNC0();

	if (FUNC6(currcons)) {
		struct vc_data *vc = vc_cons[currcons].d;
		struct vt_notifier_param param = { .vc = vc };

		FUNC1(&vt_notifier_list, VT_DEALLOCATE, &param);
		FUNC7(currcons);
		vc->vc_sw->con_deinit(vc);
		FUNC4(vc->vt_pid);
		FUNC3(vc->vc_sw->owner);
		FUNC2(vc->vc_screenbuf);
		if (currcons >= MIN_NR_CONSOLES)
			FUNC2(vc);
		vc_cons[currcons].d = NULL;
	}
}