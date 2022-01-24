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
struct uart_sunsab_port {int cached_mode; int /*<<< orphan*/  irqflags; int /*<<< orphan*/  pvr_dtr_bit; int /*<<< orphan*/  cached_pvr; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int SAB82532_MODE_FRTS ; 
 int SAB82532_MODE_RTS ; 
 int /*<<< orphan*/  SAB82532_REGS_PENDING ; 
 int /*<<< orphan*/  SAB82532_XPR ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_sunsab_port*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port, unsigned int mctrl)
{
	struct uart_sunsab_port *up = (struct uart_sunsab_port *) port;

	if (mctrl & TIOCM_RTS) {
		up->cached_mode &= ~SAB82532_MODE_FRTS;
		up->cached_mode |= SAB82532_MODE_RTS;
	} else {
		up->cached_mode |= (SAB82532_MODE_FRTS |
				    SAB82532_MODE_RTS);
	}
	if (mctrl & TIOCM_DTR) {
		up->cached_pvr &= ~(up->pvr_dtr_bit);
	} else {
		up->cached_pvr |= up->pvr_dtr_bit;
	}

	FUNC0(SAB82532_REGS_PENDING, &up->irqflags);
	if (FUNC2(SAB82532_XPR, &up->irqflags))
		FUNC1(up);
}