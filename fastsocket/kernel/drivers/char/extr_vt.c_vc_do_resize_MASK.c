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
typedef  int /*<<< orphan*/  ws ;
struct winsize {unsigned int ws_row; unsigned int ws_col; int /*<<< orphan*/  ws_ypixel; } ;
struct vc_data {unsigned int vc_resize_user; unsigned int vc_cols; unsigned int vc_rows; unsigned int vc_size_row; unsigned int vc_screenbuf_size; unsigned long vc_origin; unsigned int vc_y; unsigned int vc_scr_end; unsigned short* vc_screenbuf; unsigned int vc_bottom; int /*<<< orphan*/  vc_num; int /*<<< orphan*/  vc_scan_lines; int /*<<< orphan*/  vc_x; scalar_t__ vc_top; int /*<<< orphan*/  vc_video_erase_char; } ;
struct tty_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vc_data*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_USER ; 
 unsigned int VC_RESIZE_MAXCOL ; 
 unsigned int VC_RESIZE_MAXROW ; 
 int /*<<< orphan*/  VT_EVENT_RESIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short*) ; 
 unsigned short* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct winsize*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC6 (unsigned int,unsigned int) ; 
 unsigned long FUNC7 (struct vc_data*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned short*,unsigned short*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*,struct winsize*) ; 
 int /*<<< orphan*/  FUNC13 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct tty_struct *tty, struct vc_data *vc,
				unsigned int cols, unsigned int lines)
{
	unsigned long old_origin, new_origin, new_scr_end, rlth, rrem, err = 0;
	unsigned int old_cols, old_rows, old_row_size, old_screen_size;
	unsigned int new_cols, new_rows, new_row_size, new_screen_size;
	unsigned int end, user;
	unsigned short *newscreen;

	FUNC1();

	if (!vc)
		return -ENXIO;

	user = vc->vc_resize_user;
	vc->vc_resize_user = 0;

	if (cols > VC_RESIZE_MAXCOL || lines > VC_RESIZE_MAXROW)
		return -EINVAL;

	new_cols = (cols ? cols : vc->vc_cols);
	new_rows = (lines ? lines : vc->vc_rows);
	new_row_size = new_cols << 1;
	new_screen_size = new_row_size * new_rows;

	if (new_cols == vc->vc_cols && new_rows == vc->vc_rows)
		return 0;

	newscreen = FUNC4(new_screen_size, GFP_USER);
	if (!newscreen)
		return -ENOMEM;

	old_rows = vc->vc_rows;
	old_cols = vc->vc_cols;
	old_row_size = vc->vc_size_row;
	old_screen_size = vc->vc_screenbuf_size;

	err = FUNC7(vc, new_cols, new_rows, user);
	if (err) {
		FUNC3(newscreen);
		return err;
	}

	vc->vc_rows = new_rows;
	vc->vc_cols = new_cols;
	vc->vc_size_row = new_row_size;
	vc->vc_screenbuf_size = new_screen_size;

	rlth = FUNC6(old_row_size, new_row_size);
	rrem = new_row_size - rlth;
	old_origin = vc->vc_origin;
	new_origin = (long) newscreen;
	new_scr_end = new_origin + new_screen_size;

	if (vc->vc_y > new_rows) {
		if (old_rows - vc->vc_y < new_rows) {
			/*
			 * Cursor near the bottom, copy contents from the
			 * bottom of buffer
			 */
			old_origin += (old_rows - new_rows) * old_row_size;
			end = vc->vc_scr_end;
		} else {
			/*
			 * Cursor is in no man's land, copy 1/2 screenful
			 * from the top and bottom of cursor position
			 */
			old_origin += (vc->vc_y - new_rows/2) * old_row_size;
			end = old_origin + (old_row_size * new_rows);
		}
	} else
		/*
		 * Cursor near the top, copy contents from the top of buffer
		 */
		end = (old_rows > new_rows) ? old_origin +
			(old_row_size * new_rows) :
			vc->vc_scr_end;

	FUNC13(vc);

	while (old_origin < end) {
		FUNC9((unsigned short *) new_origin,
			    (unsigned short *) old_origin, rlth);
		if (rrem)
			FUNC10((void *)(new_origin + rlth),
				    vc->vc_video_erase_char, rrem);
		old_origin += old_row_size;
		new_origin += new_row_size;
	}
	if (new_scr_end > new_origin)
		FUNC10((void *)new_origin, vc->vc_video_erase_char,
			    new_scr_end - new_origin);
	FUNC3(vc->vc_screenbuf);
	vc->vc_screenbuf = newscreen;
	vc->vc_screenbuf_size = new_screen_size;
	FUNC11(vc);

	/* do part of a reset_terminal() */
	vc->vc_top = 0;
	vc->vc_bottom = vc->vc_rows;
	FUNC2(vc, vc->vc_x, vc->vc_y);
	FUNC8(vc);

	if (tty) {
		/* Rewrite the requested winsize data with the actual
		   resulting sizes */
		struct winsize ws;
		FUNC5(&ws, 0, sizeof(ws));
		ws.ws_row = vc->vc_rows;
		ws.ws_col = vc->vc_cols;
		ws.ws_ypixel = vc->vc_scan_lines;
		FUNC12(tty, &ws);
	}

	if (FUNC0(vc))
		FUNC14(vc);
	FUNC15(VT_EVENT_RESIZE, vc->vc_num, vc->vc_num);
	return err;
}