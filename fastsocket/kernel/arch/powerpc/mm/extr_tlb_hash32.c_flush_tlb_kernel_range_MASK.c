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
 int /*<<< orphan*/  FINISH_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  init_mm ; 

void FUNC1(unsigned long start, unsigned long end)
{
	FUNC0(&init_mm, start, end);
	FINISH_FLUSH;
}