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
struct hwblk_info {struct hwblk* hwblks; } ;
struct hwblk {int bit; int /*<<< orphan*/  mstp; } ;

/* Variables and functions */
 int /*<<< orphan*/  HWBLK_CNT_USAGE ; 
 int FUNC0 (struct hwblk_info*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwblk_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct hwblk_info *info, int hwblk)
{
	struct hwblk *hp = info->hwblks + hwblk;
	unsigned long tmp;
	unsigned long flags;
	int ret;

	FUNC3(&hwblk_lock, flags);

	ret = FUNC0(info, hwblk, HWBLK_CNT_USAGE, -1, 0);
	if (ret == 0) {
		tmp = FUNC1(hp->mstp);
		tmp |= 1 << hp->bit;
		FUNC2(tmp, hp->mstp);
	}

	FUNC4(&hwblk_lock, flags);
}