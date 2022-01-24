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
typedef  int /*<<< orphan*/  u32 ;
struct cmac {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTR ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct cmac *cmac)
{
	u32 master_intr_status;

	/* Read the master interrupt status register. */
	FUNC2(cmac, SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS,
	       &master_intr_status);
	FUNC0(cmac->adapter, INTR, "PM3393 intr cause 0x%x\n",
	       master_intr_status);

	/* TBD XXX Lets just clear everything for now */
	FUNC1(cmac);

	return 0;
}