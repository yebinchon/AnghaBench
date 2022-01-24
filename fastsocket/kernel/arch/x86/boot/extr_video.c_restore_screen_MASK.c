#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct biosregs {int ah; int /*<<< orphan*/  dl; int /*<<< orphan*/  dh; } ;
typedef  int addr_t ;
struct TYPE_4__ {int orig_video_cols; int orig_video_lines; } ;
struct TYPE_6__ {TYPE_1__ screen_info; } ;
struct TYPE_5__ {int y; int x; int /*<<< orphan*/  curx; int /*<<< orphan*/  cury; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 TYPE_3__ boot_params ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ graphic_mode ; 
 int /*<<< orphan*/  FUNC1 (struct biosregs*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct biosregs*,int /*<<< orphan*/ *) ; 
 TYPE_2__ saved ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video_segment ; 

__attribute__((used)) static void FUNC4(void)
{
	/* Should be called after store_mode_params() */
	int xs = boot_params.screen_info.orig_video_cols;
	int ys = boot_params.screen_info.orig_video_lines;
	int y;
	addr_t dst = 0;
	u16 *src = saved.data;
	struct biosregs ireg;

	if (graphic_mode)
		return;		/* Can't restore onto a graphic mode */

	if (!src)
		return;		/* No saved screen contents */

	/* Restore screen contents */

	FUNC3(video_segment);
	for (y = 0; y < ys; y++) {
		int npad;

		if (y < saved.y) {
			int copy = (xs < saved.x) ? xs : saved.x;
			FUNC0(dst, src, copy*sizeof(u16));
			dst += copy*sizeof(u16);
			src += saved.x;
			npad = (xs < saved.x) ? 0 : xs-saved.x;
		} else {
			npad = xs;
		}

		/* Writes "npad" blank characters to
		   video_segment:dst and advances dst */
		asm volatile("pushw %%es ; "
			     "movw %2,%%es ; "
			     "shrw %%cx ; "
			     "jnc 1f ; "
			     "stosw \n\t"
			     "1: rep;stosl ; "
			     "popw %%es"
			     : "+D" (dst), "+c" (npad)
			     : "bdS" (video_segment),
			       "a" (0x07200720));
	}

	/* Restore cursor position */
	FUNC1(&ireg);
	ireg.ah = 0x02;		/* Set cursor position */
	ireg.dh = saved.cury;
	ireg.dl = saved.curx;
	FUNC2(0x10, &ireg, NULL);
}