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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct nouveau_timer {scalar_t__ (* read ) (struct nouveau_timer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NV_SUBDEV_CLASS ; 
 struct nouveau_timer* FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,int) ; 
 int FUNC3 (void*,int) ; 
 scalar_t__ FUNC4 (struct nouveau_timer*) ; 
 scalar_t__ FUNC5 (struct nouveau_timer*) ; 

bool
FUNC6(void *obj, u64 nsec, u32 addr, u32 mask, u32 data)
{
	struct nouveau_timer *ptimer = FUNC0(obj);
	u64 time0;

	time0 = ptimer->read(ptimer);
	do {
		if (FUNC1(obj, NV_SUBDEV_CLASS)) {
			if ((FUNC2(obj, addr) & mask) != data)
				return true;
		} else {
			if ((FUNC3(obj, addr) & mask) != data)
				return true;
		}
	} while (ptimer->read(ptimer) - time0 < nsec);

	return false;
}