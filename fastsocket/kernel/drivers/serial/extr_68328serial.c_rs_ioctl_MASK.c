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
struct tty_struct {int flags; int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct serial_struct {int dummy; } ;
struct m68k_serial {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EIO ; 
 int ENODEV ; 
 int ENOIOCTLCMD ; 
#define  TCSBRK 133 
#define  TCSBRKP 132 
#define  TIOCGSERIAL 131 
 unsigned int TIOCSERCONFIG ; 
#define  TIOCSERGETLSR 130 
#define  TIOCSERGSTRUCT 129 
 unsigned int TIOCSERGWILD ; 
 unsigned int TIOCSERSWILD ; 
#define  TIOCSSERIAL 128 
 int TTY_IO_ERROR ; 
 int /*<<< orphan*/  VERIFY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct m68k_serial*,struct m68k_serial*,int) ; 
 int FUNC2 (struct m68k_serial*,unsigned int*) ; 
 int FUNC3 (struct m68k_serial*,struct serial_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct m68k_serial*,unsigned long) ; 
 scalar_t__ FUNC5 (struct m68k_serial*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct m68k_serial*,struct serial_struct*) ; 
 int FUNC7 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct tty_struct *tty, struct file * file,
		    unsigned int cmd, unsigned long arg)
{
	int error;
	struct m68k_serial * info = (struct m68k_serial *)tty->driver_data;
	int retval;

	if (FUNC5(info, tty->name, "rs_ioctl"))
		return -ENODEV;

	if ((cmd != TIOCGSERIAL) && (cmd != TIOCSSERIAL) &&
	    (cmd != TIOCSERCONFIG) && (cmd != TIOCSERGWILD)  &&
	    (cmd != TIOCSERSWILD) && (cmd != TIOCSERGSTRUCT)) {
		if (tty->flags & (1 << TTY_IO_ERROR))
		    return -EIO;
	}
	
	switch (cmd) {
		case TCSBRK:	/* SVID version: non-zero arg --> no break */
			retval = FUNC7(tty);
			if (retval)
				return retval;
			FUNC8(tty, 0);
			if (!arg)
				FUNC4(info, 250);	/* 1/4 second */
			return 0;
		case TCSBRKP:	/* support for POSIX tcsendbreak() */
			retval = FUNC7(tty);
			if (retval)
				return retval;
			FUNC8(tty, 0);
			FUNC4(info, arg ? arg*(100) : 250);
			return 0;
		case TIOCGSERIAL:
			if (FUNC0(VERIFY_WRITE, (void *) arg,
						sizeof(struct serial_struct)))
				return FUNC3(info,
					       (struct serial_struct *) arg);
			return -EFAULT;
		case TIOCSSERIAL:
			return FUNC6(info,
					       (struct serial_struct *) arg);
		case TIOCSERGETLSR: /* Get line status register */
			if (FUNC0(VERIFY_WRITE, (void *) arg,
						sizeof(unsigned int)))
				return FUNC2(info, (unsigned int *) arg);
			return -EFAULT;
		case TIOCSERGSTRUCT:
			if (!FUNC0(VERIFY_WRITE, (void *) arg,
						sizeof(struct m68k_serial)))
				return -EFAULT;
			FUNC1((struct m68k_serial *) arg,
				    info, sizeof(struct m68k_serial));
			return 0;
			
		default:
			return -ENOIOCTLCMD;
		}
	return 0;
}