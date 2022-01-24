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
struct biosregs {int ah; int al; int /*<<< orphan*/  bh; } ;
struct TYPE_3__ {int orig_video_mode; int /*<<< orphan*/  orig_video_page; } ;
struct TYPE_4__ {TYPE_1__ screen_info; } ;

/* Variables and functions */
 TYPE_2__ boot_params ; 
 int /*<<< orphan*/  FUNC0 (struct biosregs*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct biosregs*,struct biosregs*) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct biosregs ireg, oreg;

	/* N.B.: the saving of the video page here is a bit silly,
	   since we pretty much assume page 0 everywhere. */
	FUNC0(&ireg);
	ireg.ah = 0x0f;
	FUNC1(0x10, &ireg, &oreg);

	/* Not all BIOSes are clean with respect to the top bit */
	boot_params.screen_info.orig_video_mode = oreg.al & 0x7f;
	boot_params.screen_info.orig_video_page = oreg.bh;
}