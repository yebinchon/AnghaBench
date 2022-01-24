#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  arg ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(int port)
{
	struct sockaddr_in addr;
	int fd, err, arg;

	fd = FUNC7(PF_INET, SOCK_STREAM, 0);
	if (fd == -1)
		return -errno;

	arg = 1;
	if (FUNC6(fd, SOL_SOCKET, SO_REUSEADDR, &arg, sizeof(arg)) < 0) {
		err = -errno;
		goto out;
	}

	addr.sin_family = AF_INET;
	addr.sin_port = FUNC3(port);
	addr.sin_addr.s_addr = FUNC2(INADDR_ANY);
	if (FUNC0(fd, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		err = -errno;
		goto out;
	}

	if (FUNC4(fd, 1) < 0) {
		err = -errno;
		goto out;
	}

	err = FUNC5(fd, 0);
	if (err < 0)
		goto out;

	return fd;
 out:
	FUNC1(fd);
	return err;
}