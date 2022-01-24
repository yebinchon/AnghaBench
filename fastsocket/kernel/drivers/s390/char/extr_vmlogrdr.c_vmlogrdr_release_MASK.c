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
struct vmlogrdr_priv_t {scalar_t__ dev_in_use; int /*<<< orphan*/  autopurge; scalar_t__ autorecording; int /*<<< orphan*/ * path; } ;
struct inode {int dummy; } ;
struct file {struct vmlogrdr_priv_t* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct vmlogrdr_priv_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (struct inode *inode, struct file *filp)
{
	int ret;

	struct vmlogrdr_priv_t * logptr = filp->private_data;

	FUNC0(logptr->path, NULL);
	FUNC1(logptr->path);
	logptr->path = NULL;
	if (logptr->autorecording) {
		ret = FUNC3(logptr,0,logptr->autopurge);
		if (ret)
			FUNC2("vmlogrdr: failed to stop "
				   "recording automatically\n");
	}
	logptr->dev_in_use = 0;

	return 0;
}