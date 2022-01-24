#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  name; scalar_t__ regs; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_ESPI_CMD_ADDR ; 
 scalar_t__ A_ESPI_GOSTAT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int F_ESPI_CMD_BUSY ; 
 int TRICN_CMD_ATTEMPTS ; 
 int /*<<< orphan*/  TRICN_CMD_WRITE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(adapter_t *adapter, int bundle_addr, int module_addr,
		       int ch_addr, int reg_offset, u32 wr_data)
{
	int busy, attempts = TRICN_CMD_ATTEMPTS;

	FUNC8(FUNC6(wr_data) |
	       FUNC4(reg_offset) |
	       FUNC2(ch_addr) | FUNC3(module_addr) |
	       FUNC1(bundle_addr) |
	       FUNC5(TRICN_CMD_WRITE),
	       adapter->regs + A_ESPI_CMD_ADDR);
	FUNC8(0, adapter->regs + A_ESPI_GOSTAT);

	do {
		busy = FUNC7(adapter->regs + A_ESPI_GOSTAT) & F_ESPI_CMD_BUSY;
	} while (busy && --attempts);

	if (busy)
		FUNC0("%s: TRICN write timed out\n", adapter->name);

	return busy;
}