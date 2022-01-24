#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct m68k_serial {size_t line; } ;
struct TYPE_3__ {int /*<<< orphan*/  ustcnt; } ;
typedef  TYPE_1__ m68328_uart ;

/* Variables and functions */
 int /*<<< orphan*/  USTCNT_TXEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (struct m68k_serial*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* uart_addr ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	struct m68k_serial *info = (struct m68k_serial *)tty->driver_data;
	m68328_uart *uart = &uart_addr[info->line];
	unsigned long flags;

	if (FUNC2(info, tty->name, "rs_stop"))
		return;
	
	FUNC1(flags);
	uart->ustcnt &= ~USTCNT_TXEN;
	FUNC0(flags);
}