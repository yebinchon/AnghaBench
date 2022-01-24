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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static u32 *FUNC3(int tasknum)
{
	u32 *desc;
	int num_descs;
	int drd_count;
	int i;

	num_descs = FUNC2(tasknum);
	desc = FUNC1(tasknum) + num_descs - 1;
	drd_count = 0;
	for (i=0; i<num_descs; i++, desc--)
		if (FUNC0(*desc) && ++drd_count == 3)
			break;
	return desc;
}