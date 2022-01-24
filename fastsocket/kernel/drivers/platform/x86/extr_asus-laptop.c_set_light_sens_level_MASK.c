#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int light_level; } ;

/* Variables and functions */
 TYPE_1__* hotk ; 
 int /*<<< orphan*/  ls_level_handle ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(int value)
{
	if (FUNC1(ls_level_handle, NULL, value, NULL))
		FUNC0("Error setting light sensor level\n");
	hotk->light_level = value;
}