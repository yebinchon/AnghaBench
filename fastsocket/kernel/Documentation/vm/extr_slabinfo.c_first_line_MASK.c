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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ show_activity ; 

__attribute__((used)) static void FUNC1(void)
{
	if (show_activity)
		FUNC0("Name                   Objects      Alloc       Free   %%Fast Fallb O\n");
	else
		FUNC0("Name                   Objects Objsize    Space "
			"Slabs/Part/Cpu  O/S O %%Fr %%Ef Flg\n");
}