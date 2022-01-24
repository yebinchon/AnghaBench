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
typedef  int u8 ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (void*) ; 
 int FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,int) ; 

bool
FUNC4(void *obj, bool lock)
{
	bool locked = !FUNC2(obj, 0, 0x1f);
	u8 data = lock ? 0x99 : 0x57;
	FUNC3(obj, 0, 0x1f, data);
	if (FUNC0(obj)->chipset == 0x11) {
		if (!(FUNC1(obj, 0x001084) & 0x10000000))
			FUNC3(obj, 1, 0x1f, data);
	}
	return locked;
}