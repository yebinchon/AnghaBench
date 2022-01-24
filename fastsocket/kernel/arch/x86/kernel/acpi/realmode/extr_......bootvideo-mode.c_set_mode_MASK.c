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
typedef  int u16 ;
struct TYPE_3__ {int vid_mode; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;

/* Variables and functions */
 int EXTENDED_VGA ; 
 int NORMAL_VGA ; 
 int VIDEO_80x25 ; 
 int VIDEO_8POINT ; 
 int VIDEO_CURRENT_MODE ; 
 int VIDEO_RECALC ; 
 TYPE_2__ boot_params ; 
 int FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(u16 mode)
{
	int rv;
	u16 real_mode;

	/* Very special mode numbers... */
	if (mode == VIDEO_CURRENT_MODE)
		return 0;	/* Nothing to do... */
	else if (mode == NORMAL_VGA)
		mode = VIDEO_80x25;
	else if (mode == EXTENDED_VGA)
		mode = VIDEO_8POINT;

	rv = FUNC0(mode, &real_mode);
	if (rv)
		return rv;

	if (mode & VIDEO_RECALC)
		FUNC1();

	/* Save the canonical mode number for the kernel, not
	   an alias, size specification or menu position */
#ifndef _WAKEUP
	boot_params.hdr.vid_mode = real_mode;
#endif
	return 0;
}