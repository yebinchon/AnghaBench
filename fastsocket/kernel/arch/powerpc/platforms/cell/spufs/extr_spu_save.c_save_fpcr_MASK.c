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
struct TYPE_2__ {int /*<<< orphan*/  v; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpcr ; 
 TYPE_1__* regs_spill ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(void)
{
	// vector unsigned int fpcr;
	unsigned int offset;

	/* Save, Step 9:
	 *    Issue the floating-point status and control register
	 *    read instruction, and save to the LSCSA.
	 */
	offset = FUNC0(fpcr);
	regs_spill[offset].v = FUNC1();
}