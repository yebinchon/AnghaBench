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
struct peespi {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ A_ESPI_DIP2_ERR_COUNT ; 
 scalar_t__ A_ESPI_INTR_STATUS ; 
 scalar_t__ A_PL_CAUSE ; 
 int F_PL_INTR_ESPI ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

void FUNC2(struct peespi *espi)
{
	FUNC0(espi->adapter->regs + A_ESPI_DIP2_ERR_COUNT);
	FUNC1(0xffffffff, espi->adapter->regs + A_ESPI_INTR_STATUS);
	FUNC1(F_PL_INTR_ESPI, espi->adapter->regs + A_PL_CAUSE);
}