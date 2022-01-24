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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__* soft_unresettable_controller ; 

__attribute__((used)) static int FUNC1(u32 board_id)
{
	int i;

	for (i = 0; i < FUNC0(soft_unresettable_controller); i++)
		if (soft_unresettable_controller[i] == board_id)
			return 0;
	return 1;
}