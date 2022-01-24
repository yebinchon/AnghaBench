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
struct pt1 {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 int HZ ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct pt1*,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (struct pt1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt1*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pt1 *pt1, int addr)
{
	FUNC0(pt1, addr,     1, 0, 0, 0, addr + 1);
	FUNC0(pt1, addr + 1, 1, 0, 1, 0, addr + 2);
	FUNC0(pt1, addr + 2, 1, 0, 1, 1, 0);

	FUNC2(pt1, 0, 0x00000004);
	do {
		if (FUNC4(current))
			return -EINTR;
		FUNC3((HZ + 999) / 1000);
	} while (FUNC1(pt1, 0) & 0x00000080);
	return 0;
}