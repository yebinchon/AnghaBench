#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {void* private_data; } ;
struct TYPE_3__ {int minor; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* chardevs ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct file *filp)
{
	int n, i;

	FUNC2();
	n = FUNC1(inode);
	filp->private_data = (void *) (unsigned long) n;

	for (i = 0; i < FUNC0(chardevs); ++i)
		if (chardevs[i].minor == n) {
			FUNC3();
			return 0;
		}
	FUNC3();
	return -EINVAL;
}