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
struct work_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ UART_LSR ; 
 int UART_LSR_DR ; 
 char UART_LSR_TEMT ; 
 char UART_LSR_THRE ; 
 scalar_t__ UART_RX ; 
 scalar_t__ UART_TX ; 
 scalar_t__ avr_addr ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(struct work_struct *unused)
{
	const char string[] = "AAAAFFFFJJJJ>>>>VVVV>>>>ZZZZVVVVKKKK";
	int i = 0, rescue = 8;
	int len = FUNC4(string);

	while (rescue--) {
		int j;
		char lsr = FUNC0(avr_addr + UART_LSR);

		if (lsr & (UART_LSR_THRE | UART_LSR_TEMT)) {
			for (j = 0; j < 16 && i < len; j++, i++)
				FUNC2(avr_addr + UART_TX, string[i]);
			if (i == len) {
				/* Read "OK" back: 4ms for the last "KKKK"
				   plus a couple bytes back */
				FUNC1(7);
				FUNC3("linkstation: disarming the AVR watchdog: ");
				while (FUNC0(avr_addr + UART_LSR) & UART_LSR_DR)
					FUNC3("%c", FUNC0(avr_addr + UART_RX));
				break;
			}
		}
		FUNC1(17);
	}
	FUNC3("\n");
}