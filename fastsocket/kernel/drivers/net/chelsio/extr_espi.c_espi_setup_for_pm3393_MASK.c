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
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ regs; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_ESPI_CALENDAR_LENGTH ; 
 scalar_t__ A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK ; 
 scalar_t__ A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK ; 
 scalar_t__ A_ESPI_SCH_TOKEN0 ; 
 scalar_t__ A_ESPI_SCH_TOKEN1 ; 
 scalar_t__ A_ESPI_SCH_TOKEN2 ; 
 scalar_t__ A_ESPI_SCH_TOKEN3 ; 
 scalar_t__ A_ESPI_TRAIN ; 
 scalar_t__ A_PORT_CONFIG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(adapter_t *adapter)
{
	u32 wmark = FUNC2(adapter) ? 0x4000 : 0x3200;

	FUNC3(0x1f4, adapter->regs + A_ESPI_SCH_TOKEN0);
	FUNC3(0x1f4, adapter->regs + A_ESPI_SCH_TOKEN1);
	FUNC3(0x1f4, adapter->regs + A_ESPI_SCH_TOKEN2);
	FUNC3(0x1f4, adapter->regs + A_ESPI_SCH_TOKEN3);
	FUNC3(0x100, adapter->regs + A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK);
	FUNC3(wmark, adapter->regs + A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK);
	FUNC3(3, adapter->regs + A_ESPI_CALENDAR_LENGTH);
	FUNC3(0x08000008, adapter->regs + A_ESPI_TRAIN);
	FUNC3(FUNC0(1) | FUNC1(1), adapter->regs + A_PORT_CONFIG);
}