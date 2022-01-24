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
struct vc_data {unsigned int vc_cols; unsigned int vc_x; scalar_t__ vc_need_wrap; int /*<<< orphan*/  vc_video_erase_char; int /*<<< orphan*/  vc_y; TYPE_1__* vc_sw; scalar_t__ vc_pos; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* con_clear ) (struct vc_data*,int /*<<< orphan*/ ,unsigned int,int,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int /*<<< orphan*/ ,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*,int /*<<< orphan*/ ,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,int /*<<< orphan*/ ,unsigned int,int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct vc_data *vc, int vpar)
{
	unsigned int count;
	unsigned short * start;

	switch (vpar) {
		case 0:	/* erase from cursor to end of line */
			count = vc->vc_cols - vc->vc_x;
			start = (unsigned short *)vc->vc_pos;
			if (FUNC0(vc))
				vc->vc_sw->con_clear(vc, vc->vc_y, vc->vc_x, 1,
						     vc->vc_cols - vc->vc_x);
			break;
		case 1:	/* erase from start of line to cursor */
			start = (unsigned short *)(vc->vc_pos - (vc->vc_x << 1));
			count = vc->vc_x + 1;
			if (FUNC0(vc))
				vc->vc_sw->con_clear(vc, vc->vc_y, 0, 1,
						     vc->vc_x + 1);
			break;
		case 2: /* erase whole line */
			start = (unsigned short *)(vc->vc_pos - (vc->vc_x << 1));
			count = vc->vc_cols;
			if (FUNC0(vc))
				vc->vc_sw->con_clear(vc, vc->vc_y, 0, 1,
					      vc->vc_cols);
			break;
		default:
			return;
	}
	FUNC1(start, vc->vc_video_erase_char, 2 * count);
	vc->vc_need_wrap = 0;
}