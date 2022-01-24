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

/* Variables and functions */
 int CLONE_FILES ; 
 int CLONE_VM ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  io_thread ; 
 int kernel_fd ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int*,int,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(unsigned long sp, int *fd_out)
{
	int pid, fds[2], err;

	err = FUNC2(fds, 1, 1);
	if(err < 0){
		FUNC4("start_io_thread - os_pipe failed, err = %d\n", -err);
		goto out;
	}

	kernel_fd = fds[0];
	*fd_out = fds[1];

	err = FUNC3(*fd_out, 0);
	if (err) {
		FUNC4("start_io_thread - failed to set nonblocking I/O.\n");
		goto out_close;
	}

	pid = FUNC0(io_thread, (void *) sp, CLONE_FILES | CLONE_VM, NULL);
	if(pid < 0){
		err = -errno;
		FUNC4("start_io_thread - clone failed : errno = %d\n", errno);
		goto out_close;
	}

	return(pid);

 out_close:
	FUNC1(fds[0]);
	FUNC1(fds[1]);
	kernel_fd = -1;
	*fd_out = -1;
 out:
	return err;
}