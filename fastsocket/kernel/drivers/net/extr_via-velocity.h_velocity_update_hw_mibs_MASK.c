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
typedef  int u32 ;
struct velocity_info {int* mib_counter; TYPE_1__* mac_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  MIBData; int /*<<< orphan*/  MIBCR; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int HW_MIB_SIZE ; 
 int /*<<< orphan*/  MIBCR_MIBFLSH ; 
 int /*<<< orphan*/  MIBCR_MPTRINI ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct velocity_info *vptr)
{
	u32 tmp;
	int i;
	FUNC1(MIBCR_MIBFLSH, &(vptr->mac_regs->MIBCR));

	while (FUNC0(MIBCR_MIBFLSH, &(vptr->mac_regs->MIBCR)));

	FUNC1(MIBCR_MPTRINI, &(vptr->mac_regs->MIBCR));
	for (i = 0; i < HW_MIB_SIZE; i++) {
		tmp = FUNC2(&(vptr->mac_regs->MIBData)) & 0x00FFFFFFUL;
		vptr->mib_counter[i] += tmp;
	}
}