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
struct tty_struct {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct m68k_serial {scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (struct m68k_serial*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct m68k_serial *info = (struct m68k_serial *)tty->driver_data;
	unsigned long flags;
				
	if (FUNC2(info, tty->name, "rs_flush_buffer"))
		return;
	FUNC1(flags);
	info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;
	FUNC0(flags);
	FUNC3(tty);
}