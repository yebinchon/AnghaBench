#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {struct binder_proc* private_data; } ;
struct binder_proc {int pid; int /*<<< orphan*/  delivered_death; int /*<<< orphan*/  proc_node; int /*<<< orphan*/  default_priority; int /*<<< orphan*/  wait; int /*<<< orphan*/  todo; TYPE_2__* tsk; } ;
typedef  int /*<<< orphan*/  strbuf ;
struct TYPE_6__ {TYPE_1__* group_leader; int /*<<< orphan*/  pid; } ;
struct TYPE_5__ {int pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEBUG_OPEN_CLOSE ; 
 int /*<<< orphan*/  BINDER_STAT_PROC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  binder_lock ; 
 scalar_t__ binder_proc_dir_entry_proc ; 
 int /*<<< orphan*/  binder_procs ; 
 int /*<<< orphan*/  binder_read_proc_proc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct binder_proc*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct binder_proc* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC13(struct inode *nodp, struct file *filp)
{
	struct binder_proc *proc;

	FUNC1(BINDER_DEBUG_OPEN_CLOSE, "binder_open: %d:%d\n",
		     current->group_leader->pid, current->pid);

	proc = FUNC7(sizeof(*proc), GFP_KERNEL);
	if (proc == NULL)
		return -ENOMEM;
	FUNC4(current);
	proc->tsk = current;
	FUNC0(&proc->todo);
	FUNC6(&proc->wait);
	proc->default_priority = FUNC12(current);
	FUNC8(&binder_lock);
	FUNC2(BINDER_STAT_PROC);
	FUNC5(&proc->proc_node, &binder_procs);
	proc->pid = current->group_leader->pid;
	FUNC0(&proc->delivered_death);
	filp->private_data = proc;
	FUNC9(&binder_lock);

	if (binder_proc_dir_entry_proc) {
		char strbuf[11];
		FUNC11(strbuf, sizeof(strbuf), "%u", proc->pid);
		FUNC10(strbuf, binder_proc_dir_entry_proc);
		FUNC3(strbuf, S_IRUGO,
				       binder_proc_dir_entry_proc,
				       binder_read_proc_proc, proc);
	}

	return 0;
}