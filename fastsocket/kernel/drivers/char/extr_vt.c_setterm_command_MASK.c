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
struct vc_data {int* vc_par; int vc_def_color; int vc_attr; int vc_hi_font_mask; int vc_npar; int vc_bell_pitch; int vc_bell_duration; int /*<<< orphan*/  vc_intensity; void* vc_halfcolor; int /*<<< orphan*/  vc_can_do_color; int /*<<< orphan*/  vc_underline; void* vc_ulcolor; } ;

/* Variables and functions */
 int DEFAULT_BELL_DURATION ; 
 int DEFAULT_BELL_PITCH ; 
 int HZ ; 
 int blankinterval ; 
 void** color_table ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*) ; 
 int last_console ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int vesa_off_interval ; 

__attribute__((used)) static void FUNC5(struct vc_data *vc)
{
	switch(vc->vc_par[0]) {
		case 1:	/* set color for underline mode */
			if (vc->vc_can_do_color &&
					vc->vc_par[1] < 16) {
				vc->vc_ulcolor = color_table[vc->vc_par[1]];
				if (vc->vc_underline)
					FUNC3(vc);
			}
			break;
		case 2:	/* set color for half intensity mode */
			if (vc->vc_can_do_color &&
					vc->vc_par[1] < 16) {
				vc->vc_halfcolor = color_table[vc->vc_par[1]];
				if (vc->vc_intensity == 0)
					FUNC3(vc);
			}
			break;
		case 8:	/* store colors as defaults */
			vc->vc_def_color = vc->vc_attr;
			if (vc->vc_hi_font_mask == 0x100)
				vc->vc_def_color >>= 1;
			FUNC0(vc);
			FUNC3(vc);
			break;
		case 9:	/* set blanking interval */
			blankinterval = ((vc->vc_par[1] < 60) ? vc->vc_par[1] : 60) * 60;
			FUNC1();
			break;
		case 10: /* set bell frequency in Hz */
			if (vc->vc_npar >= 1)
				vc->vc_bell_pitch = vc->vc_par[1];
			else
				vc->vc_bell_pitch = DEFAULT_BELL_PITCH;
			break;
		case 11: /* set bell duration in msec */
			if (vc->vc_npar >= 1)
				vc->vc_bell_duration = (vc->vc_par[1] < 2000) ?
					vc->vc_par[1] * HZ / 1000 : 0;
			else
				vc->vc_bell_duration = DEFAULT_BELL_DURATION;
			break;
		case 12: /* bring specified console to the front */
			if (vc->vc_par[1] >= 1 && FUNC4(vc->vc_par[1] - 1))
				FUNC2(vc->vc_par[1] - 1);
			break;
		case 13: /* unblank the screen */
			FUNC1();
			break;
		case 14: /* set vesa powerdown interval */
			vesa_off_interval = ((vc->vc_par[1] < 60) ? vc->vc_par[1] : 60) * 60 * HZ;
			break;
		case 15: /* activate the previous console */
			FUNC2(last_console);
			break;
	}
}