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
 int F_PL_INTR_ESPI ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

void FUNC2(struct peespi *espi)
{
	u32 pl_intr = FUNC0(espi->adapter->regs + A_PL_ENABLE);

	FUNC1(0, espi->adapter->regs + A_ESPI_INTR_ENABLE);
	FUNC1(pl_intr & ~F_PL_INTR_ESPI, espi->adapter->regs + A_PL_ENABLE);
}