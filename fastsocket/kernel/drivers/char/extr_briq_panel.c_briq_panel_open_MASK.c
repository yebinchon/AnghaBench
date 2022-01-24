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
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int vfd_is_open ; 

__attribute__((used)) static int FUNC2(struct inode *ino, struct file *filep)
{
	FUNC0();
	/* enforce single access, vfd_is_open is protected by BKL */
	if (vfd_is_open) {
		FUNC1();
		return -EBUSY;
	}
	vfd_is_open = 1;

	FUNC1();
	return 0;
}