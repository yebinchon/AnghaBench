#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {TYPE_1__* termios; int /*<<< orphan*/  name; struct slgt_info* driver_data; } ;
struct slgt_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  signals; scalar_t__ x_char; int /*<<< orphan*/  device_name; } ;
struct TYPE_2__ {int c_cflag; } ;

/* Variables and functions */
 int CRTSCTS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  SerialSignal_RTS ; 
 scalar_t__ FUNC3 (struct slgt_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct tty_struct * tty)
{
	struct slgt_info *info = tty->driver_data;
	unsigned long flags;

	if (FUNC3(info, tty->name, "unthrottle"))
		return;
	FUNC0(("%s unthrottle\n", info->device_name));
	if (FUNC1(tty)) {
		if (info->x_char)
			info->x_char = 0;
		else
			FUNC4(tty, FUNC2(tty));
	}
 	if (tty->termios->c_cflag & CRTSCTS) {
		FUNC6(&info->lock,flags);
		info->signals |= SerialSignal_RTS;
	 	FUNC5(info);
		FUNC7(&info->lock,flags);
	}
}