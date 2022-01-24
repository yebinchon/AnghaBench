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
struct pd_unit {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pd_unit*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pd_unit*,int,int) ; 

__attribute__((used)) static void FUNC3(struct pd_unit *disk, int n, int s, int h, int c0, int c1, int func)
{
	FUNC2(disk, 6, FUNC0(disk) + h);
	FUNC2(disk, 1, 0);		/* the IDE task file */
	FUNC2(disk, 2, n);
	FUNC2(disk, 3, s);
	FUNC2(disk, 4, c0);
	FUNC2(disk, 5, c1);
	FUNC2(disk, 7, func);

	FUNC1(1);
}