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
typedef  int /*<<< orphan*/  u32 ;
struct MPT2SAS_ADAPTER {scalar_t__ mask_interrupts; TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  HostInterruptMask; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPI2_HIM_RIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct MPT2SAS_ADAPTER *ioc)
{
	u32 him_register;

	him_register = FUNC0(&ioc->chip->HostInterruptMask);
	him_register &= ~MPI2_HIM_RIM;
	FUNC1(him_register, &ioc->chip->HostInterruptMask);
	ioc->mask_interrupts = 0;
}