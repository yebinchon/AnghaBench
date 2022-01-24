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
struct ivtv {int dummy; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {scalar_t__ par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct fb_var_screeninfo*,struct ivtv*) ; 

__attribute__((used)) static int FUNC2(struct fb_var_screeninfo *var, struct fb_info *info)
{
	struct ivtv *itv = (struct ivtv *) info->par;
	FUNC0("ivtvfb_check_var\n");
	return FUNC1(var, itv);
}