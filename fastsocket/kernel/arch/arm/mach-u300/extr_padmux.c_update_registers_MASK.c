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
typedef  int /*<<< orphan*/  u16 ;
struct pmx {TYPE_1__* onmask; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pmx_registers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pmx *pmx, bool activate)
{
	u16 regval, val, mask;
	int i;

	for (i = 0; i < FUNC0(pmx_registers); i++) {
		if (activate)
			val = pmx->onmask[i].val;
		else
			val = 0;

		mask = pmx->onmask[i].mask;
		if (mask != 0) {
			regval = FUNC1(pmx_registers[i]);
			regval &= ~mask;
			regval |= val;
			FUNC2(regval, pmx_registers[i]);
		}
	}
}