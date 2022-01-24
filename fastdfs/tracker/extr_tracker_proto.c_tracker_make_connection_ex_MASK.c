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
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  g_connection_pool ; 
 scalar_t__ g_use_connection_pool ; 

ConnectionInfo *FUNC2(ConnectionInfo *conn,
		const int connect_timeout, int *err_no)
{
	if (g_use_connection_pool)
	{
		return FUNC1(&g_connection_pool,
			conn, err_no);
	}
	else
	{
		*err_no = FUNC0(conn, connect_timeout);
		if (*err_no != 0)
		{
			return NULL;
		}
		else
		{
			return conn;
		}
	}
}