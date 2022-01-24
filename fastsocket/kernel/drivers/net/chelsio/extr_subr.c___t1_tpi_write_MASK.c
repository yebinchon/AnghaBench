#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  name; scalar_t__ regs; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_TPI_ADDR ; 
 scalar_t__ A_TPI_CSR ; 
 scalar_t__ A_TPI_WR_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_TPIRDY ; 
 int /*<<< orphan*/  F_TPIWR ; 
 int /*<<< orphan*/  TPI_ATTEMPTS ; 
 int FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3(adapter_t *adapter, u32 addr, u32 value)
{
	int tpi_busy;

	FUNC2(addr, adapter->regs + A_TPI_ADDR);
	FUNC2(value, adapter->regs + A_TPI_WR_DATA);
	FUNC2(F_TPIWR, adapter->regs + A_TPI_CSR);

	tpi_busy = FUNC1(adapter, A_TPI_CSR, F_TPIRDY, 1,
				   TPI_ATTEMPTS, 3);
	if (tpi_busy)
		FUNC0("%s: TPI write to 0x%x failed\n",
			 adapter->name, addr);
	return tpi_busy;
}