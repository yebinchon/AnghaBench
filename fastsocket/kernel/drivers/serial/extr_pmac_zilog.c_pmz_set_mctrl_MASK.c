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
struct uart_port {int dummy; } ;
struct uart_pmac_port {unsigned char* curregs; } ;

/* Variables and functions */
 unsigned char DTR ; 
 size_t R5 ; 
 unsigned char RTS ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC1 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC2 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC3 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC4 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned char,unsigned char,unsigned char) ; 
 struct uart_pmac_port* FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_pmac_port*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_pmac_port*) ; 

__attribute__((used)) static void FUNC9(struct uart_port *port, unsigned int mctrl)
{
	struct uart_pmac_port *uap = FUNC6(port);
	unsigned char set_bits, clear_bits;

        /* Do nothing for irda for now... */
	if (FUNC3(uap))
		return;
	/* We get called during boot with a port not up yet */
	if (FUNC0(uap) ||
	    !(FUNC4(uap) || FUNC1(uap)))
		return;

	set_bits = clear_bits = 0;

	if (FUNC2(uap)) {
		if (mctrl & TIOCM_RTS)
			set_bits |= RTS;
		else
			clear_bits |= RTS;
	}
	if (mctrl & TIOCM_DTR)
		set_bits |= DTR;
	else
		clear_bits |= DTR;

	/* NOTE: Not subject to 'transmitter active' rule.  */ 
	uap->curregs[R5] |= set_bits;
	uap->curregs[R5] &= ~clear_bits;
	if (FUNC0(uap))
		return;
	FUNC7(uap, R5, uap->curregs[R5]);
	FUNC5("pmz_set_mctrl: set bits: %x, clear bits: %x -> %x\n",
		  set_bits, clear_bits, uap->curregs[R5]);
	FUNC8(uap);
}