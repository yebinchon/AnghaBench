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
struct file {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 scalar_t__ ipath_diag_inuse ; 
 int /*<<< orphan*/  ipath_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *in, struct file *fp)
{
	FUNC0(&ipath_mutex);
	ipath_diag_inuse = 0;
	fp->private_data = NULL;
	FUNC1(&ipath_mutex);
	return 0;
}