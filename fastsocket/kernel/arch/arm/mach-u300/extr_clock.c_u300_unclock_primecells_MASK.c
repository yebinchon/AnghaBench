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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intcon_clk ; 
 int /*<<< orphan*/  mmcsd_clk ; 
 int /*<<< orphan*/  spi_clk ; 
 int /*<<< orphan*/  uart1_clk ; 
 int /*<<< orphan*/  uart_clk ; 

void FUNC1(void)
{

	FUNC0(&intcon_clk);
	FUNC0(&uart_clk);
#ifdef CONFIG_MACH_U300_BS335
	clk_disable(&uart1_clk);
#endif
	FUNC0(&spi_clk);
	FUNC0(&mmcsd_clk);

}