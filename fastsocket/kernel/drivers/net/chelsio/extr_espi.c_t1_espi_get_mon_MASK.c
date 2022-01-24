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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct peespi {int misc_ctrl; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {scalar_t__ regs; struct peespi* espi; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_ESPI_MISC_CONTROL ; 
 scalar_t__ A_ESPI_SCH_TOKEN3 ; 
 int MON_MASK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

u32 FUNC7(adapter_t *adapter, u32 addr, u8 wait)
{
	struct peespi *espi = adapter->espi;
	u32 sel;

	if (!FUNC1(adapter))
		return 0;

	sel = FUNC0((addr & 0x3c) >> 2);
	if (!wait) {
		if (!FUNC4(&espi->lock))
			return 0;
	} else
		FUNC3(&espi->lock);

	if ((sel != (espi->misc_ctrl & MON_MASK))) {
		FUNC6(((espi->misc_ctrl & ~MON_MASK) | sel),
		       adapter->regs + A_ESPI_MISC_CONTROL);
		sel = FUNC2(adapter->regs + A_ESPI_SCH_TOKEN3);
		FUNC6(espi->misc_ctrl, adapter->regs + A_ESPI_MISC_CONTROL);
	} else
		sel = FUNC2(adapter->regs + A_ESPI_SCH_TOKEN3);
	FUNC5(&espi->lock);
	return sel;
}