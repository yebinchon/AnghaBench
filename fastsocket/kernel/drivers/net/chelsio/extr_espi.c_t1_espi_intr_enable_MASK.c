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
struct peespi {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ A_ESPI_INTR_ENABLE ; 
 scalar_t__ A_PL_ENABLE ; 
 int ESPI_INTR_MASK ; 
 int F_PL_INTR_ESPI ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

void FUNC3(struct peespi *espi)
{
	u32 enable, pl_intr = FUNC0(espi->adapter->regs + A_PL_ENABLE);

	/*
	 * Cannot enable ESPI interrupts on T1B because HW asserts the
	 * interrupt incorrectly, namely the driver gets ESPI interrupts
	 * but no data is actually dropped (can verify this reading the ESPI
	 * drop registers).  Also, once the ESPI interrupt is asserted it
	 * cannot be cleared (HW bug).
	 */
	enable = FUNC1(espi->adapter) ? 0 : ESPI_INTR_MASK;
	FUNC2(enable, espi->adapter->regs + A_ESPI_INTR_ENABLE);
	FUNC2(pl_intr | F_PL_INTR_ESPI, espi->adapter->regs + A_PL_ENABLE);
}