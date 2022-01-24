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
struct tty_struct {struct slgt_info* driver_data; } ;
struct slgt_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  signals; int /*<<< orphan*/  device_name; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SerialSignal_DTR ; 
 int /*<<< orphan*/  SerialSignal_RTS ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, struct file *file,
		    unsigned int set, unsigned int clear)
{
	struct slgt_info *info = tty->driver_data;
 	unsigned long flags;

	FUNC0(("%s tiocmset(%x,%x)\n", info->device_name, set, clear));

	if (set & TIOCM_RTS)
		info->signals |= SerialSignal_RTS;
	if (set & TIOCM_DTR)
		info->signals |= SerialSignal_DTR;
	if (clear & TIOCM_RTS)
		info->signals &= ~SerialSignal_RTS;
	if (clear & TIOCM_DTR)
		info->signals &= ~SerialSignal_DTR;

	FUNC2(&info->lock,flags);
 	FUNC1(info);
	FUNC3(&info->lock,flags);
	return 0;
}