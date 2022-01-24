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
struct vc_data {scalar_t__ vc_mode; int /*<<< orphan*/  vc_num; TYPE_1__* vc_sw; } ;
struct TYPE_4__ {struct vc_data* d; } ;
struct TYPE_3__ {int (* con_blank ) (struct vc_data*,int,int) ;} ;

/* Variables and functions */
 scalar_t__ KD_TEXT ; 
 int /*<<< orphan*/  VT_EVENT_BLANK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ blank_normal_wait ; 
 scalar_t__ blank_off ; 
 scalar_t__ blank_state ; 
 scalar_t__ blank_timer_expired ; 
 scalar_t__ blank_vesa_wait ; 
 scalar_t__ FUNC1 (int) ; 
 int console_blanked ; 
 int /*<<< orphan*/  console_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t fg_console ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*) ; 
 int FUNC7 (struct vc_data*,int,int) ; 
 int FUNC8 (struct vc_data*,int,int) ; 
 int FUNC9 (struct vc_data*,int,int) ; 
 TYPE_2__* vc_cons ; 
 int vesa_blank_mode ; 
 scalar_t__ vesa_off_interval ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(int entering_gfx)
{
	struct vc_data *vc = vc_cons[fg_console].d;
	int i;

	FUNC0();

	if (console_blanked) {
		if (blank_state == blank_vesa_wait) {
			blank_state = blank_off;
			vc->vc_sw->con_blank(vc, vesa_blank_mode + 1, 0);
		}
		return;
	}

	/* entering graphics mode? */
	if (entering_gfx) {
		FUNC3(vc);
		FUNC5(vc);
		vc->vc_sw->con_blank(vc, -1, 1);
		console_blanked = fg_console + 1;
		blank_state = blank_off;
		FUNC6(vc);
		return;
	}

	if (blank_state != blank_normal_wait)
		return;
	blank_state = blank_off;

	/* don't blank graphics */
	if (vc->vc_mode != KD_TEXT) {
		console_blanked = fg_console + 1;
		return;
	}

	FUNC3(vc);
	FUNC2(&console_timer);
	blank_timer_expired = 0;

	FUNC5(vc);
	/* In case we need to reset origin, blanking hook returns 1 */
	i = vc->vc_sw->con_blank(vc, vesa_off_interval ? 1 : (vesa_blank_mode + 1), 0);
	console_blanked = fg_console + 1;
	if (i)
		FUNC6(vc);

	if (&console_blank_hook && FUNC1(1))
		return;

	if (vesa_off_interval && vesa_blank_mode) {
		blank_state = blank_vesa_wait;
		FUNC4(&console_timer, jiffies + vesa_off_interval);
	}
	FUNC10(VT_EVENT_BLANK, vc->vc_num, vc->vc_num);
}