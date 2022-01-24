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
struct vc_data {int vc_scr_end; int vc_pos; unsigned int vc_y; unsigned int vc_x; unsigned int vc_cols; unsigned int vc_rows; int vc_origin; unsigned short* vc_screenbuf; int vc_screenbuf_size; scalar_t__ vc_need_wrap; int /*<<< orphan*/  vc_video_erase_char; TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* con_clear ) (struct vc_data*,unsigned int,unsigned int,unsigned int,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,unsigned int,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,unsigned int,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct vc_data*,unsigned int,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct vc_data*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct vc_data*) ; 

__attribute__((used)) static void FUNC10(struct vc_data *vc, int vpar)
{
	unsigned int count;
	unsigned short * start;

	switch (vpar) {
		case 0:	/* erase from cursor to end of display */
			count = (vc->vc_scr_end - vc->vc_pos) >> 1;
			start = (unsigned short *)vc->vc_pos;
			if (FUNC1(vc)) {
				/* do in two stages */
				vc->vc_sw->con_clear(vc, vc->vc_y, vc->vc_x, 1,
					      vc->vc_cols - vc->vc_x);
				vc->vc_sw->con_clear(vc, vc->vc_y + 1, 0,
					      vc->vc_rows - vc->vc_y - 1,
					      vc->vc_cols);
			}
			break;
		case 1:	/* erase from start to cursor */
			count = ((vc->vc_pos - vc->vc_origin) >> 1) + 1;
			start = (unsigned short *)vc->vc_origin;
			if (FUNC1(vc)) {
				/* do in two stages */
				vc->vc_sw->con_clear(vc, 0, 0, vc->vc_y,
					      vc->vc_cols);
				vc->vc_sw->con_clear(vc, vc->vc_y, 0, 1,
					      vc->vc_x + 1);
			}
			break;
		case 3: /* erase scroll-back buffer (and whole display) */
			FUNC2(vc->vc_screenbuf, vc->vc_video_erase_char,
				    vc->vc_screenbuf_size >> 1);
			FUNC3(vc);
			if (FUNC0(vc))
				FUNC9(vc);
			/* fall through */
		case 2: /* erase whole display */
			count = vc->vc_cols * vc->vc_rows;
			start = (unsigned short *)vc->vc_origin;
			if (FUNC1(vc))
				vc->vc_sw->con_clear(vc, 0, 0,
					      vc->vc_rows,
					      vc->vc_cols);
			break;
		default:
			return;
	}
	FUNC2(start, vc->vc_video_erase_char, 2 * count);
	vc->vc_need_wrap = 0;
}