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
struct file {struct binder_proc* private_data; } ;
struct binder_proc {int pid; } ;
typedef  int /*<<< orphan*/  strbuf ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEFERRED_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct binder_proc*,int /*<<< orphan*/ ) ; 
 scalar_t__ binder_proc_dir_entry_proc ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC3(struct inode *nodp, struct file *filp)
{
	struct binder_proc *proc = filp->private_data;
	if (binder_proc_dir_entry_proc) {
		char strbuf[11];
		FUNC2(strbuf, sizeof(strbuf), "%u", proc->pid);
		FUNC1(strbuf, binder_proc_dir_entry_proc);
	}

	FUNC0(proc, BINDER_DEFERRED_RELEASE);

	return 0;
}