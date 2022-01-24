#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 long FUNC2 (int /*<<< orphan*/ ,struct file*,unsigned int,unsigned long) ; 

__attribute__((used)) static long FUNC3(struct file *file,
		unsigned int cmd, unsigned long arg)
{
	long rc;

	FUNC0();
	rc = FUNC2(file->f_path.dentry->d_inode, file, cmd, arg);
	FUNC1();
	return rc;
}