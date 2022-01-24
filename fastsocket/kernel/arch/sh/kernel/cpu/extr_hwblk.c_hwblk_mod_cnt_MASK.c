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
struct hwblk_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hwblk_info*,int,int,int,int) ; 
 int /*<<< orphan*/  hwblk_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct hwblk_info *info, int hwblk,
			  int counter, int value, int goal)
{
	unsigned long flags;

	FUNC1(&hwblk_lock, flags);
	FUNC0(info, hwblk, counter, value, goal);
	FUNC2(&hwblk_lock, flags);
}