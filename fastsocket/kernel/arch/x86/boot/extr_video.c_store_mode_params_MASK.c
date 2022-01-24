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
typedef  void* u16 ;
struct TYPE_3__ {int orig_video_mode; int orig_video_cols; int orig_video_lines; void* orig_video_points; } ;
struct TYPE_4__ {TYPE_1__ screen_info; } ;

/* Variables and functions */
 scalar_t__ ADAPTER_CGA ; 
 scalar_t__ adapter ; 
 TYPE_2__ boot_params ; 
 int force_x ; 
 int force_y ; 
 scalar_t__ graphic_mode ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int video_segment ; 

__attribute__((used)) static void FUNC5(void)
{
	u16 font_size;
	int x, y;

	/* For graphics mode, it is up to the mode-setting driver
	   (currently only video-vesa.c) to store the parameters */
	if (graphic_mode)
		return;

	FUNC3();
	FUNC4();

	if (boot_params.screen_info.orig_video_mode == 0x07) {
		/* MDA, HGC, or VGA in monochrome mode */
		video_segment = 0xb000;
	} else {
		/* CGA, EGA, VGA and so forth */
		video_segment = 0xb800;
	}

	FUNC2(0);
	font_size = FUNC0(0x485); /* Font size, BIOS area */
	boot_params.screen_info.orig_video_points = font_size;

	x = FUNC0(0x44a);
	y = (adapter == ADAPTER_CGA) ? 25 : FUNC1(0x484)+1;

	if (force_x)
		x = force_x;
	if (force_y)
		y = force_y;

	boot_params.screen_info.orig_video_cols  = x;
	boot_params.screen_info.orig_video_lines = y;
}