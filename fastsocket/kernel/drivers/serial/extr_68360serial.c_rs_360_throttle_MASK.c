#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* chars_in_buffer ) (struct tty_struct*) ;} ;
struct tty_struct {TYPE_1__* termios; int /*<<< orphan*/  name; TYPE_2__ ldisc; scalar_t__ driver_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  MCR; } ;
typedef  TYPE_3__ ser_info_t ;
struct TYPE_6__ {int c_cflag; } ;

/* Variables and functions */
 int CRTSCTS ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  UART_MCR ; 
 int /*<<< orphan*/  UART_MCR_RTS ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC10(struct tty_struct * tty)
{
	ser_info_t *info = (ser_info_t *)tty->driver_data;
#ifdef SERIAL_DEBUG_THROTTLE
	char	buf[64];
	
	printk("throttle %s: %d....\n", _tty_name(tty, buf),
	       tty->ldisc.chars_in_buffer(tty));
#endif

	if (FUNC8(info, tty->name, "rs_throttle"))
		return;
	
	if (FUNC0(tty))
		FUNC6(tty, FUNC1(tty));

#ifdef modem_control
	if (tty->termios->c_cflag & CRTSCTS)
		info->MCR &= ~UART_MCR_RTS;

	local_irq_disable();
	serial_out(info, UART_MCR, info->MCR);
	local_irq_enable();
#endif
}