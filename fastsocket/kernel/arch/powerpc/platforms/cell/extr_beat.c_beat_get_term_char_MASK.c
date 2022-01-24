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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ s64 ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int64_t FUNC1(u64 vterm, u64 *len, u64 *t1, u64 *t2)
{
	u64 db[2];
	s64 ret;

	ret = FUNC0(vterm, len, (u8 *)db);
	if (ret == 0) {
		*t1 = db[0];
		*t2 = db[1];
	}
	return ret;
}