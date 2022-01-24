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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SE_U3_RX_INT ; 
 int /*<<< orphan*/  SE_U5_RX_INT ; 
 scalar_t__ UART3_BASE_VA ; 
 scalar_t__ UART5_BASE_VA ; 
 scalar_t__ UART_FCR_OFFSET ; 
 int UART_FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	u32 tmp;
	int i = UART_FIFO_SIZE;

	FUNC1(0xC1, UART5_BASE_VA + UART_FCR_OFFSET);
	FUNC1(0xC1, UART3_BASE_VA + UART_FCR_OFFSET);

	/* Send a NULL to fix the UART HW bug */
	FUNC1(0x00, UART5_BASE_VA);
	FUNC1(0x00, UART3_BASE_VA);

	while (i--) {
		tmp = FUNC0(UART5_BASE_VA);
		tmp = FUNC0(UART3_BASE_VA);
	}
	FUNC1(0, UART5_BASE_VA + UART_FCR_OFFSET);
	FUNC1(0, UART3_BASE_VA + UART_FCR_OFFSET);

	/* setup wakeup interrupt */
	FUNC3(SE_U3_RX_INT);
	FUNC2(SE_U3_RX_INT);
	FUNC4(SE_U3_RX_INT);

	FUNC3(SE_U5_RX_INT);
	FUNC2(SE_U5_RX_INT);
	FUNC4(SE_U5_RX_INT);
}