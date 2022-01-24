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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sock ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(const char *name)
{
	struct sockaddr_un sock;
	int fd, err;

	sock.sun_family = AF_UNIX;
	FUNC2(sock.sun_path, sizeof(sock.sun_path), "%s", name);

	fd = FUNC3(AF_UNIX, SOCK_STREAM, 0);
	if (fd < 0) {
		err = -errno;
		goto out;
	}

	err = FUNC1(fd, (struct sockaddr *) &sock, sizeof(sock));
	if (err) {
		err = -errno;
		goto out_close;
	}

	return fd;

out_close:
	FUNC0(fd);
out:
	return err;
}