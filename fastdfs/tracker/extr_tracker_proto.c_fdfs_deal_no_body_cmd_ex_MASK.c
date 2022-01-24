#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int port; int sock; int /*<<< orphan*/  ip_addr; } ;
typedef  TYPE_1__ ConnectionInfo ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int*) ; 

int FUNC4(const char *ip_addr, const int port, const int cmd)
{
	ConnectionInfo *conn;
	ConnectionInfo server_info;
	int result;

	FUNC1(server_info.ip_addr, ip_addr);
	server_info.port = port;
	server_info.sock = -1;
	if ((conn=FUNC3(&server_info, &result)) == NULL)
	{
		return result;
	}

	result = FUNC0(conn, cmd);
	FUNC2(conn, result != 0);
	return result;
}