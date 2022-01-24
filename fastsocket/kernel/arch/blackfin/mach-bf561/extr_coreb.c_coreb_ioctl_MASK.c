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
#define  CMD_COREB_RESET 130 
#define  CMD_COREB_START 129 
#define  CMD_COREB_STOP 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct inode *inode, struct file *file, unsigned int cmd, unsigned long arg)
{
	int ret = 0;

	switch (cmd) {
	case CMD_COREB_START:
		FUNC3(FUNC1() & ~0x0020);
		break;
	case CMD_COREB_STOP:
		FUNC3(FUNC1() | 0x0020);
		FUNC4(FUNC2() | 0x0080);
		break;
	case CMD_COREB_RESET:
		FUNC4(FUNC2() | 0x0080);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC0();

	return ret;
}