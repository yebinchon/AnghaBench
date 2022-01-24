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
 int /*<<< orphan*/  GP1_IO_BASE ; 
 int /*<<< orphan*/  GP2_IO_BASE ; 
 int GPIO_DONE ; 
 int GPIO_FAN ; 
 int GPIO_RED_LED ; 
 int GPIO_WDTIMER ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int current_gpio_io ; 
 int /*<<< orphan*/  nw_gpio_lock ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC8(void)
{
	unsigned long flags;

	/*
	 * Set up initial I/O definitions
	 */
	current_gpio_io = -1;
	FUNC0(-1, GPIO_DONE | GPIO_WDTIMER);

	FUNC5(7);

	/*
	 * Group1 base address
	 */
	FUNC7(0x60, GP1_IO_BASE);
	FUNC7(0x62, 0);
	FUNC7(0x64, 0);

	/*
	 * GP10 (Orage button) IRQ 10, active high, edge trigger
	 */
	FUNC6(0x70, 10);
	FUNC6(0x71, 0x02);

	/*
	 * GP10: Debounce filter enabled, IRQ, input
	 */
	FUNC6(0xe0, 0x19);

	/*
	 * Enable Group1
	 */
	FUNC4();

	FUNC5(8);

	/*
	 * Group2 base address
	 */
	FUNC7(0x60, GP2_IO_BASE);

	/*
	 * Clear watchdog timer regs
	 *  - timer disable
	 */
	FUNC6(0xf2, 0x00);

	/*
	 *  - disable LED, no mouse nor keyboard IRQ
	 */
	FUNC6(0xf3, 0x00);

	/*
	 *  - timer counting, disable power LED, disable timeouot
	 */
	FUNC6(0xf4, 0x00);

	/*
	 * Enable group2
	 */
	FUNC4();

	/*
	 * Set Group1/Group2 outputs
	 */
	FUNC2(&nw_gpio_lock, flags);
	FUNC1(-1, GPIO_RED_LED | GPIO_FAN);
	FUNC3(&nw_gpio_lock, flags);
}