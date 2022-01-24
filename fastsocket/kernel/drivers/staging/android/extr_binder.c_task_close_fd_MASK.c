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
struct files_struct {int /*<<< orphan*/  file_lock; } ;
struct file {int dummy; } ;
struct fdtable {unsigned int max_fds; int /*<<< orphan*/  close_on_exec; struct file** fd; } ;
struct binder_proc {struct files_struct* files; } ;

/* Variables and functions */
 long EBADF ; 
 int EINTR ; 
 int ERESTARTNOHAND ; 
 int ERESTARTNOINTR ; 
 int ERESTARTSYS ; 
 int ERESTART_RESTARTBLOCK ; 
 long ESRCH ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct files_struct*,unsigned int) ; 
 struct fdtable* FUNC2 (struct files_struct*) ; 
 int FUNC3 (struct file*,struct files_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static long FUNC8(struct binder_proc *proc, unsigned int fd)
{
	struct file *filp;
	struct files_struct *files = proc->files;
	struct fdtable *fdt;
	int retval;

	if (files == NULL)
		return -ESRCH;

	FUNC5(&files->file_lock);
	fdt = FUNC2(files);
	if (fd >= fdt->max_fds)
		goto out_unlock;
	filp = fdt->fd[fd];
	if (!filp)
		goto out_unlock;
	FUNC4(fdt->fd[fd], NULL);
	FUNC0(fd, fdt->close_on_exec);
	FUNC1(files, fd);
	FUNC6(&files->file_lock);
	retval = FUNC3(filp, files);

	/* can't restart close syscall because file table entry was cleared */
	if (FUNC7(retval == -ERESTARTSYS ||
		     retval == -ERESTARTNOINTR ||
		     retval == -ERESTARTNOHAND ||
		     retval == -ERESTART_RESTARTBLOCK))
		retval = -EINTR;

	return retval;

out_unlock:
	FUNC6(&files->file_lock);
	return -EBADF;
}