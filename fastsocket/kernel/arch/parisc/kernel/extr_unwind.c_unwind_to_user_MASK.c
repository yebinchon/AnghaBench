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
struct unwind_frame_info {int ip; } ;

/* Variables and functions */
 int FUNC0 (struct unwind_frame_info*) ; 

int FUNC1(struct unwind_frame_info *info)
{
	int ret;
	
	do {
		ret = FUNC0(info);
	} while (!ret && !(info->ip & 3));

	return ret;
}