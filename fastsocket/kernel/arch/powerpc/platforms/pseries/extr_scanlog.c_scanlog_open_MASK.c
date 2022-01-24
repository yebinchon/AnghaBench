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
struct proc_dir_entry {scalar_t__ data; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 struct proc_dir_entry* FUNC0 (struct inode*) ; 

__attribute__((used)) static int FUNC1(struct inode * inode, struct file * file)
{
	struct proc_dir_entry *dp = FUNC0(inode);
	unsigned int *data = (unsigned int *)dp->data;

	if (data[0] != 0) {
		/* This imperfect test stops a second copy of the
		 * data (or a reset while data is being copied)
		 */
		return -EBUSY;
	}

	data[0] = 0;	/* re-init so we restart the scan */

	return 0;
}