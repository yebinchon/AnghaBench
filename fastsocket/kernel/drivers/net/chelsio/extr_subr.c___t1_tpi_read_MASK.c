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
struct TYPE_4__ {scalar_t__ regs; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_TPI_ADDR ; 
 scalar_t__ A_TPI_CSR ; 
 scalar_t__ A_TPI_RD_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_TPIRDY ; 
 int /*<<< orphan*/  TPI_ATTEMPTS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(adapter_t *adapter, u32 addr, u32 *valp)
{
	int tpi_busy;

	FUNC3(addr, adapter->regs + A_TPI_ADDR);
	FUNC3(0, adapter->regs + A_TPI_CSR);

	tpi_busy = FUNC2(adapter, A_TPI_CSR, F_TPIRDY, 1,
				   TPI_ATTEMPTS, 3);
	if (tpi_busy)
		FUNC0("%s: TPI read from 0x%x failed\n",
			 adapter->name, addr);
	else
		*valp = FUNC1(adapter->regs + A_TPI_RD_DATA);
	return tpi_busy;
}