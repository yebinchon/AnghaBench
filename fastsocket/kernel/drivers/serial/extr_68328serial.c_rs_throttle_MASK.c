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
struct m68k_serial {int /*<<< orphan*/  x_char; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct m68k_serial*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct tty_struct * tty)
{
	struct m68k_serial *info = (struct m68k_serial *)tty->driver_data;

	if (FUNC2(info, tty->name, "rs_throttle"))
		return;
	
	if (FUNC0(tty))
		info->x_char = FUNC1(tty);

	/* Turn off RTS line (do this atomic) */
}