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
struct vc_data {int vc_screenbuf_size; unsigned short vc_complement_mask; int vc_cols; TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* con_putc ) (struct vc_data*,unsigned short,unsigned short,unsigned short) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned short FUNC2 (unsigned short*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,unsigned short*) ; 
 unsigned short* FUNC4 (struct vc_data*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*,unsigned short,unsigned short,unsigned short) ; 

void FUNC7(struct vc_data *vc, int offset)
{
	static int old_offset = -1;
	static unsigned short old;
	static unsigned short oldx, oldy;

	FUNC1();

	if (old_offset != -1 && old_offset >= 0 &&
	    old_offset < vc->vc_screenbuf_size) {
		FUNC3(old, FUNC4(vc, old_offset, 1));
		if (FUNC0(vc))
			vc->vc_sw->con_putc(vc, old, oldy, oldx);
	}

	old_offset = offset;

	if (offset != -1 && offset >= 0 &&
	    offset < vc->vc_screenbuf_size) {
		unsigned short new;
		unsigned short *p;
		p = FUNC4(vc, offset, 1);
		old = FUNC2(p);
		new = old ^ vc->vc_complement_mask;
		FUNC3(new, p);
		if (FUNC0(vc)) {
			oldx = (offset >> 1) % vc->vc_cols;
			oldy = (offset >> 1) / vc->vc_cols;
			vc->vc_sw->con_putc(vc, new, oldy, oldx);
		}
	}

}