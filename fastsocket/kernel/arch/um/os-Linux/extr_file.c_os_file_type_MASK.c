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
struct uml_stat {int /*<<< orphan*/  ust_mode; } ;

/* Variables and functions */
 int OS_TYPE_BLOCKDEV ; 
 int OS_TYPE_CHARDEV ; 
 int OS_TYPE_DIR ; 
 int OS_TYPE_FIFO ; 
 int OS_TYPE_FILE ; 
 int OS_TYPE_SOCK ; 
 int OS_TYPE_SYMLINK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,struct uml_stat*) ; 

int FUNC7(char *file)
{
	struct uml_stat buf;
	int err;

	err = FUNC6(file, &buf);
	if (err < 0)
		return err;

	if (FUNC2(buf.ust_mode))
		return OS_TYPE_DIR;
	else if (FUNC4(buf.ust_mode))
		return OS_TYPE_SYMLINK;
	else if (FUNC1(buf.ust_mode))
		return OS_TYPE_CHARDEV;
	else if (FUNC0(buf.ust_mode))
		return OS_TYPE_BLOCKDEV;
	else if (FUNC3(buf.ust_mode))
		return OS_TYPE_FIFO;
	else if (FUNC5(buf.ust_mode))
		return OS_TYPE_SOCK;
	else return OS_TYPE_FILE;
}