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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  uint16_t ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct in_addr ip, uint16_t port)
{
	struct sockaddr_in addr;
	socklen_t addrlen = sizeof(addr);
	int serverfd, flags, value;

	if((serverfd = FUNC8(AF_INET, SOCK_STREAM, 0)) == -1) {
		FUNC6("Unable to open socket");
		FUNC1();
	}

	flags = FUNC2(serverfd, F_GETFL, 0);
	flags |= O_NONBLOCK;
	FUNC2(serverfd, F_SETFL, flags);

	value = 1;
	if(FUNC7(serverfd, SOL_SOCKET, SO_REUSEADDR, &value, sizeof(value)) ==
	   -1) {
		FUNC6("Unable to set socket reuseaddr option");
		FUNC1();
	}

	FUNC5(&addr, 0, addrlen);
	addr.sin_family = AF_INET;
	addr.sin_port = FUNC3(port);
	addr.sin_addr = ip;

	if(FUNC0(serverfd, (struct sockaddr *)&addr, addrlen) == -1) {
		FUNC6("Unable to bind socket");
		FUNC1();
	}

	if(FUNC4(serverfd, 8192) != 0) {
		FUNC6("Cannot listen for client connections");
		FUNC1();
	}

	return serverfd;
}