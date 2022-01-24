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
struct vc_data {int vc_npar; int* vc_par; int vc_deccolm; int vc_decscnm; int vc_decom; int vc_decawm; int vc_report_mouse; int vc_deccm; int vc_disp_ctrl; int vc_decim; int /*<<< orphan*/  vc_screenbuf_size; int /*<<< orphan*/  vc_rows; scalar_t__ vc_ques; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  decarm ; 
 int /*<<< orphan*/  decckm ; 
 int /*<<< orphan*/  deccolm ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lnm ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vc_data *vc, int on_off)
{
	int i;

	for (i = 0; i <= vc->vc_npar; i++)
		if (vc->vc_ques) {
			switch(vc->vc_par[i]) {	/* DEC private modes set/reset */
			case 1:			/* Cursor keys send ^[Ox/^[[x */
				if (on_off)
					FUNC3(vc, decckm);
				else
					FUNC0(vc, decckm);
				break;
			case 3:	/* 80/132 mode switch unimplemented */
				vc->vc_deccolm = on_off;
#if 0
				vc_resize(deccolm ? 132 : 80, vc->vc_rows);
				/* this alone does not suffice; some user mode
				   utility has to change the hardware regs */
#endif
				break;
			case 5:			/* Inverted screen on/off */
				if (vc->vc_decscnm != on_off) {
					vc->vc_decscnm = on_off;
					FUNC2(vc, 0, vc->vc_screenbuf_size, 0);
					FUNC4(vc);
				}
				break;
			case 6:			/* Origin relative/absolute */
				vc->vc_decom = on_off;
				FUNC1(vc, 0, 0);
				break;
			case 7:			/* Autowrap on/off */
				vc->vc_decawm = on_off;
				break;
			case 8:			/* Autorepeat on/off */
				if (on_off)
					FUNC3(vc, decarm);
				else
					FUNC0(vc, decarm);
				break;
			case 9:
				vc->vc_report_mouse = on_off ? 1 : 0;
				break;
			case 25:		/* Cursor on/off */
				vc->vc_deccm = on_off;
				break;
			case 1000:
				vc->vc_report_mouse = on_off ? 2 : 0;
				break;
			}
		} else {
			switch(vc->vc_par[i]) {	/* ANSI modes set/reset */
			case 3:			/* Monitor (display ctrls) */
				vc->vc_disp_ctrl = on_off;
				break;
			case 4:			/* Insert Mode on/off */
				vc->vc_decim = on_off;
				break;
			case 20:		/* Lf, Enter == CrLf/Lf */
				if (on_off)
					FUNC3(vc, lnm);
				else
					FUNC0(vc, lnm);
				break;
			}
		}
}