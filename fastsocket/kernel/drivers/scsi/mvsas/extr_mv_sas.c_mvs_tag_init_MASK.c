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
struct mvs_info {int tags_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mvs_info*,int) ; 

void FUNC1(struct mvs_info *mvi)
{
	int i;
	for (i = 0; i < mvi->tags_num; ++i)
		FUNC0(mvi, i);
}