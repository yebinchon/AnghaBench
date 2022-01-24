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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ card_type; int chipset; } ;

/* Variables and functions */
 scalar_t__ NV_50 ; 
 TYPE_1__* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int FUNC2 (void*,int) ; 
 int FUNC3 (void*,int,int) ; 

u8
FUNC4(void *obj)
{
	if (FUNC0(obj)->card_type < NV_50) {
		if (FUNC0(obj)->chipset == 0x11) {
			u32 tied = FUNC2(obj, 0x001084) & 0x10000000;
			if (tied == 0) {
				u8 slA = FUNC3(obj, 0, 0x28) & 0x80;
				u8 tvA = FUNC3(obj, 0, 0x33) & 0x01;
				u8 slB = FUNC3(obj, 1, 0x28) & 0x80;
				u8 tvB = FUNC3(obj, 1, 0x33) & 0x01;
				if (slA && !tvA) return 0x00;
				if (slB && !tvB) return 0x03;
				if (slA) return 0x00;
				if (slB) return 0x03;
				return 0x00;
			}
			return 0x04;
		}

		return FUNC3(obj, 0, 0x44);
	}

	FUNC1(obj, "rdvgaowner after nv4x\n");
	return 0x00;
}