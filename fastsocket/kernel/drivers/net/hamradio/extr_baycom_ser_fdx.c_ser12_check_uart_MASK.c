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
typedef  enum uart { ____Placeholder_uart } uart ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int c_uart_16450 ; 
 int c_uart_16550 ; 
 int c_uart_16550A ; 
 int c_uart_8250 ; 
 int c_uart_unknown ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum uart FUNC8(unsigned int iobase)
{
	unsigned char b1,b2,b3;
	enum uart u;
	enum uart uart_tab[] =
		{ c_uart_16450, c_uart_unknown, c_uart_16550, c_uart_16550A };

	b1 = FUNC6(FUNC2(iobase));
	FUNC7(b1 | 0x10, FUNC2(iobase));	/* loopback mode */
	b2 = FUNC6(FUNC3(iobase));
	FUNC7(0x1a, FUNC2(iobase));
	b3 = FUNC6(FUNC3(iobase)) & 0xf0;
	FUNC7(b1, FUNC2(iobase));			/* restore old values */
	FUNC7(b2, FUNC3(iobase));
	if (b3 != 0x90)
		return c_uart_unknown;
	FUNC6(FUNC4(iobase));
	FUNC6(FUNC4(iobase));
	FUNC7(0x01, FUNC0(iobase));		/* enable FIFOs */
	u = uart_tab[(FUNC6(FUNC1(iobase)) >> 6) & 3];
	if (u == c_uart_16450) {
		FUNC7(0x5a, FUNC5(iobase));
		b1 = FUNC6(FUNC5(iobase));
		FUNC7(0xa5, FUNC5(iobase));
		b2 = FUNC6(FUNC5(iobase));
		if ((b1 != 0x5a) || (b2 != 0xa5))
			u = c_uart_8250;
	}
	return u;
}