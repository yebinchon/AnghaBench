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
struct inode {struct dtl* i_private; } ;
struct file {struct dtl* private_data; } ;
struct dtl {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dtl*) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, struct file *filp)
{
	struct dtl *dtl = inode->i_private;
	int rc;

	rc = FUNC0(dtl);
	if (rc)
		return rc;

	filp->private_data = dtl;
	return 0;
}