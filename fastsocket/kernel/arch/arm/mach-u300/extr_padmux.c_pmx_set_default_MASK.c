#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_7__ {TYPE_1__* onmask; int /*<<< orphan*/  default_on; } ;
struct TYPE_6__ {int mask; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EUSERS ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__** pmx_registers ; 
 TYPE_2__** pmx_settings ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	/* Used to identify several entries on the same bits */
	u16 modbits[FUNC0(pmx_registers)];

	int i, j;

	FUNC2(modbits, 0, FUNC0(pmx_registers) * sizeof(u16));

	for (i = 0; i < FUNC0(pmx_settings); i++) {

		if (!pmx_settings[i]->default_on)
			continue;

		for (j = 0; j < FUNC0(pmx_registers); j++) {

			/* Make sure there is only one entry on the same bits */
			if (modbits[j] & pmx_settings[i]->onmask[j].mask) {
				FUNC1();
				return -EUSERS;
			}
			modbits[j] |= pmx_settings[i]->onmask[j].mask;
		}
		FUNC3(pmx_settings[i], true);
	}
	return 0;
}