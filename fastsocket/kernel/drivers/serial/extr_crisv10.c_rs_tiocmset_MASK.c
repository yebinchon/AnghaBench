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
struct tty_struct {scalar_t__ driver_data; } ;
struct file {int dummy; } ;
struct e100_serial {int dummy; } ;

/* Variables and functions */
 unsigned int TIOCM_CD ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RI ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct e100_serial*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct e100_serial*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct e100_serial*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct e100_serial*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct tty_struct *tty, struct file *file,
		unsigned int set, unsigned int clear)
{
	struct e100_serial *info = (struct e100_serial *)tty->driver_data;
	unsigned long flags;

	FUNC5(flags);

	if (clear & TIOCM_RTS)
		FUNC3(info, 0);
	if (clear & TIOCM_DTR)
		FUNC1(info, 0);
	/* Handle FEMALE behaviour */
	if (clear & TIOCM_RI)
		FUNC2(info, 0);
	if (clear & TIOCM_CD)
		FUNC0(info, 0);

	if (set & TIOCM_RTS)
		FUNC3(info, 1);
	if (set & TIOCM_DTR)
		FUNC1(info, 1);
	/* Handle FEMALE behaviour */
	if (set & TIOCM_RI)
		FUNC2(info, 1);
	if (set & TIOCM_CD)
		FUNC0(info, 1);

	FUNC4(flags);
	return 0;
}