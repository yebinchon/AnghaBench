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
typedef  int u16 ;
struct vc_data {int vc_hi_font_mask; int /*<<< orphan*/  vc_can_do_color; TYPE_1__* vc_sw; } ;
typedef  int a ;
struct TYPE_2__ {int /*<<< orphan*/  (* con_invert_region ) (struct vc_data*,unsigned short*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,unsigned long,int) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int*) ; 
 unsigned short* FUNC5 (struct vc_data*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*,unsigned short*,int) ; 

void FUNC7(struct vc_data *vc, int offset, int count, int viewed)
{
	unsigned short *p;

	FUNC1();

	count /= 2;
	p = FUNC5(vc, offset, viewed);
	if (vc->vc_sw->con_invert_region)
		vc->vc_sw->con_invert_region(vc, p, count);
#ifndef VT_BUF_VRAM_ONLY
	else {
		u16 *q = p;
		int cnt = count;
		u16 a;

		if (!vc->vc_can_do_color) {
			while (cnt--) {
			    a = FUNC3(q);
			    a ^= 0x0800;
			    FUNC4(a, q);
			    q++;
			}
		} else if (vc->vc_hi_font_mask == 0x100) {
			while (cnt--) {
				a = FUNC3(q);
				a = ((a) & 0x11ff) | (((a) & 0xe000) >> 4) | (((a) & 0x0e00) << 4);
				FUNC4(a, q);
				q++;
			}
		} else {
			while (cnt--) {
				a = FUNC3(q);
				a = ((a) & 0x88ff) | (((a) & 0x7000) >> 4) | (((a) & 0x0700) << 4);
				FUNC4(a, q);
				q++;
			}
		}
	}
#endif
	if (FUNC0(vc))
		FUNC2(vc, (unsigned long) p, count);
}