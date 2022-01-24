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
struct xterm_chan {int pid; int helper_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(int fd, void *d)
{
	struct xterm_chan *data = d;

	if (data->pid != -1)
		FUNC1(data->pid, 1);
	data->pid = -1;

	if (data->helper_pid != -1)
		FUNC1(data->helper_pid, 0);
	data->helper_pid = -1;

	FUNC0(fd);
}