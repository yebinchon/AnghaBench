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
struct file {struct ctrl_dbg* private_data; } ;
struct ctrl_dbg {struct ctrl_dbg* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ctrl_dbg*) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, struct file *file)
{
	struct ctrl_dbg *dbg = file->private_data;

	FUNC0(dbg->data);
	FUNC0(dbg);
	return 0;
}