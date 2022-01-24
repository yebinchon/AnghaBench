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
struct vc_data {size_t vc_num; int vc_can_do_color; scalar_t__ vc_mode; int vc_screenbuf_size; int /*<<< orphan*/  vc_origin; TYPE_1__* vc_sw; struct vc_data** vc_display_fg; } ;
struct TYPE_4__ {struct vc_data* d; } ;
struct TYPE_3__ {int (* con_switch ) (struct vc_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vc_data*) ; 
 scalar_t__ KD_GRAPHICS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,int /*<<< orphan*/ ,int) ; 
 size_t fg_console ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct vc_data*) ; 
 int FUNC12 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct vc_data*) ; 
 TYPE_2__* vc_cons ; 
 scalar_t__ FUNC14 (struct vc_data*) ; 

void FUNC15(struct vc_data *vc, int is_switch)
{
	int redraw = 0;

	FUNC1();

	if (!vc) {
		/* strange ... */
		/* printk("redraw_screen: tty %d not allocated ??\n", new_console+1); */
		return;
	}

	if (is_switch) {
		struct vc_data *old_vc = vc_cons[fg_console].d;
		if (old_vc == vc)
			return;
		if (!FUNC0(vc))
			redraw = 1;
		*vc->vc_display_fg = vc;
		fg_console = vc->vc_num;
		FUNC5(old_vc);
		if (!FUNC0(old_vc)) {
			FUNC7(old_vc);
			FUNC10(old_vc);
		}
	} else {
		FUNC5(vc);
		redraw = 1;
	}

	if (redraw) {
		int update;
		int old_was_color = vc->vc_can_do_color;

		FUNC10(vc);
		update = vc->vc_sw->con_switch(vc);
		FUNC11(vc);
		/*
		 * If console changed from mono<->color, the best we can do
		 * is to clear the buffer attributes. As it currently stands,
		 * rebuilding new attributes from the old buffer is not doable
		 * without overly complex code.
		 */
		if (old_was_color != vc->vc_can_do_color) {
			FUNC13(vc);
			FUNC2(vc);
		}

		/* Forcibly update if we're panicing */
		if ((update && vc->vc_mode != KD_GRAPHICS) ||
		    FUNC14(vc))
			FUNC4(vc, vc->vc_origin, vc->vc_screenbuf_size / 2);
	}
	FUNC8(vc);
	if (is_switch) {
		FUNC9();
		FUNC3();
		FUNC6(vc);
	}
}