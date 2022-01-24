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
struct TYPE_2__ {scalar_t__ card_type; int chipset; } ;

/* Variables and functions */
 scalar_t__ NV_50 ; 
 TYPE_1__* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int,int) ; 

void
FUNC4(void *obj, u8 select)
{
	if (FUNC0(obj)->card_type < NV_50) {
		u8 owner = (select == 1) ? 3 : select;
		if (FUNC0(obj)->chipset == 0x11) {
			/* workaround hw lockup bug */
			FUNC2(obj, 0, 0x1f);
			FUNC2(obj, 1, 0x1f);
		}

		FUNC3(obj, 0, 0x44, owner);

		if (FUNC0(obj)->chipset == 0x11) {
			FUNC3(obj, 0, 0x2e, owner);
			FUNC3(obj, 0, 0x2e, owner);
		}
	} else
		FUNC1(obj, "wrvgaowner after nv4x\n");
}