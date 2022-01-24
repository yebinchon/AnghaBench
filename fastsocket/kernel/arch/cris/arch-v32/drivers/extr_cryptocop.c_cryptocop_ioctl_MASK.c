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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
#define  CRYPTOCOP_IO_CLOSE_SESSION 130 
#define  CRYPTOCOP_IO_CREATE_SESSION 129 
 scalar_t__ CRYPTOCOP_IO_MAXNR ; 
#define  CRYPTOCOP_IO_PROCESS_OP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int ENOTTY ; 
 scalar_t__ ETRAXCRYPTOCOP_IOCTYPE ; 
 int /*<<< orphan*/  VERIFY_READ ; 
 int /*<<< orphan*/  VERIFY_WRITE ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int _IOC_READ ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int _IOC_WRITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,struct file*,unsigned int,unsigned long) ; 
 int FUNC7 (struct inode*,struct file*,unsigned int,unsigned long) ; 
 int FUNC8 (struct inode*,struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *filp, unsigned int cmd, unsigned long arg)
{
	int err = 0;
	if (FUNC4(cmd) != ETRAXCRYPTOCOP_IOCTYPE) {
		FUNC0(FUNC9("cryptocop_ioctl: wrong type\n"));
		return -ENOTTY;
	}
	if (FUNC2(cmd) > CRYPTOCOP_IO_MAXNR){
		return -ENOTTY;
	}
	/* Access check of the argument.  Some commands, e.g. create session and process op,
	   needs additional checks.  Those are handled in the command handling functions. */
	if (FUNC1(cmd) & _IOC_READ)
		err = !FUNC5(VERIFY_WRITE, (void *)arg, FUNC3(cmd));
	else if (FUNC1(cmd) & _IOC_WRITE)
		err = !FUNC5(VERIFY_READ, (void *)arg, FUNC3(cmd));
	if (err) return -EFAULT;

	switch (cmd) {
	case CRYPTOCOP_IO_CREATE_SESSION:
		return FUNC7(inode, filp, cmd, arg);
	case CRYPTOCOP_IO_CLOSE_SESSION:
		return FUNC6(inode, filp, cmd, arg);
	case CRYPTOCOP_IO_PROCESS_OP:
		return FUNC8(inode, filp, cmd, arg);
	default:
		FUNC0(FUNC9("cryptocop_ioctl: unknown command\n"));
		return -ENOTTY;
	}
	return 0;
}