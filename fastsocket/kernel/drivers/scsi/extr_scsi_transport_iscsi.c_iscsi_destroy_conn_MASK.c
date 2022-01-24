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
struct iscsi_cls_conn {int /*<<< orphan*/  dev; int /*<<< orphan*/  conn_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_cls_conn*,char*) ; 
 int /*<<< orphan*/  connlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct iscsi_cls_conn *conn)
{
	unsigned long flags;

	FUNC3(&connlock, flags);
	FUNC2(&conn->conn_list);
	FUNC4(&connlock, flags);

	FUNC5(&conn->dev);
	FUNC0(conn, "Completing conn destruction\n");
	FUNC1(&conn->dev);
	return 0;
}