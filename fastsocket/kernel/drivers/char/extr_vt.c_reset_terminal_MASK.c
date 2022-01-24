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
struct vc_data {int vc_decawm; int vc_deccm; size_t vc_num; int* vc_tab_stop; int /*<<< orphan*/  vc_bell_duration; int /*<<< orphan*/  vc_bell_pitch; int /*<<< orphan*/  vc_s_complement_mask; int /*<<< orphan*/  vc_complement_mask; int /*<<< orphan*/  vc_cursor_type; scalar_t__ vc_decim; scalar_t__ vc_decom; scalar_t__ vc_decscnm; scalar_t__ vc_toggle_meta; scalar_t__ vc_disp_ctrl; scalar_t__ vc_utf_count; int /*<<< orphan*/  vc_utf; scalar_t__ vc_report_mouse; scalar_t__ vc_need_wrap; scalar_t__ vc_charset; int /*<<< orphan*/  vc_G1_charset; int /*<<< orphan*/  vc_G0_charset; int /*<<< orphan*/  vc_translate; scalar_t__ vc_ques; int /*<<< orphan*/  vc_state; int /*<<< orphan*/  vc_rows; int /*<<< orphan*/  vc_bottom; scalar_t__ vc_top; } ;
struct TYPE_2__ {int /*<<< orphan*/  default_ledflagstate; int /*<<< orphan*/  ledflagstate; int /*<<< orphan*/  ledmode; scalar_t__ slockstate; scalar_t__ lockstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  CUR_DEFAULT ; 
 int /*<<< orphan*/  DEFAULT_BELL_DURATION ; 
 int /*<<< orphan*/  DEFAULT_BELL_PITCH ; 
 int /*<<< orphan*/  ESnormal ; 
 int /*<<< orphan*/  GRAF_MAP ; 
 int /*<<< orphan*/  LAT1_MAP ; 
 int /*<<< orphan*/  LED_SHOW_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,int) ; 
 int /*<<< orphan*/  decarm ; 
 int /*<<< orphan*/  decckm ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*) ; 
 int /*<<< orphan*/  default_utf8 ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* kbd_table ; 
 int /*<<< orphan*/  kbdapplic ; 
 int /*<<< orphan*/  lnm ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct vc_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct vc_data*) ; 

__attribute__((used)) static void FUNC8(struct vc_data *vc, int do_clear)
{
	vc->vc_top		= 0;
	vc->vc_bottom		= vc->vc_rows;
	vc->vc_state		= ESnormal;
	vc->vc_ques		= 0;
	vc->vc_translate	= FUNC6(LAT1_MAP, vc);
	vc->vc_G0_charset	= LAT1_MAP;
	vc->vc_G1_charset	= GRAF_MAP;
	vc->vc_charset		= 0;
	vc->vc_need_wrap	= 0;
	vc->vc_report_mouse	= 0;
	vc->vc_utf              = default_utf8;
	vc->vc_utf_count	= 0;

	vc->vc_disp_ctrl	= 0;
	vc->vc_toggle_meta	= 0;

	vc->vc_decscnm		= 0;
	vc->vc_decom		= 0;
	vc->vc_decawm		= 1;
	vc->vc_deccm		= 1;
	vc->vc_decim		= 0;

	FUNC5(vc, decarm);
	FUNC0(vc, decckm);
	FUNC0(vc, kbdapplic);
	FUNC0(vc, lnm);
	kbd_table[vc->vc_num].lockstate = 0;
	kbd_table[vc->vc_num].slockstate = 0;
	kbd_table[vc->vc_num].ledmode = LED_SHOW_FLAGS;
	kbd_table[vc->vc_num].ledflagstate = kbd_table[vc->vc_num].default_ledflagstate;
	/* do not do set_leds here because this causes an endless tasklet loop
	   when the keyboard hasn't been initialized yet */

	vc->vc_cursor_type = CUR_DEFAULT;
	vc->vc_complement_mask = vc->vc_s_complement_mask;

	FUNC2(vc);
	FUNC7(vc);

	vc->vc_tab_stop[0]	= 0x01010100;
	vc->vc_tab_stop[1]	=
	vc->vc_tab_stop[2]	=
	vc->vc_tab_stop[3]	=
	vc->vc_tab_stop[4]	=
	vc->vc_tab_stop[5]	=
	vc->vc_tab_stop[6]	=
	vc->vc_tab_stop[7]	= 0x01010101;

	vc->vc_bell_pitch = DEFAULT_BELL_PITCH;
	vc->vc_bell_duration = DEFAULT_BELL_DURATION;

	FUNC3(vc, 0, 0);
	FUNC4(vc);
	if (do_clear)
	    FUNC1(vc, 2);
}