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
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {TYPE_1__* session; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct iscsi_conn*,struct iscsi_hdr*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
		       char *data, int datalen)
{
	int rc;

	FUNC1(&conn->session->lock);
	rc = FUNC0(conn, hdr, data, datalen);
	FUNC2(&conn->session->lock);
	return rc;
}