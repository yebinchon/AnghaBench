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
struct port_pre_exec_data {int /*<<< orphan*/  pipe_fd; int /*<<< orphan*/  sock_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUT_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
	struct port_pre_exec_data *data = arg;

	FUNC1(data->sock_fd, 0);
	FUNC1(data->sock_fd, 1);
	FUNC1(data->sock_fd, 2);
	FUNC0(data->sock_fd);
	FUNC1(data->pipe_fd, 3);
	FUNC2(3, SHUT_RD);
	FUNC0(data->pipe_fd);
}