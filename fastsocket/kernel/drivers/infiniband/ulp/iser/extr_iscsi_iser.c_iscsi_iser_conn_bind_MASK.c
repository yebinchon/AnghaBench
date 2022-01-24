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
typedef  scalar_t__ uint64_t ;
struct iser_conn {struct iscsi_iser_conn* iser_conn; } ;
struct iscsi_iser_conn {struct iser_conn* ib_conn; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct iscsi_conn {struct iscsi_iser_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (struct iscsi_cls_session*,struct iscsi_cls_conn*,int) ; 
 struct iscsi_endpoint* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct iscsi_conn*,struct iscsi_iser_conn*,struct iser_conn*) ; 

__attribute__((used)) static int
FUNC6(struct iscsi_cls_session *cls_session,
		     struct iscsi_cls_conn *cls_conn, uint64_t transport_eph,
		     int is_leading)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct iscsi_iser_conn *iser_conn;
	struct iser_conn *ib_conn;
	struct iscsi_endpoint *ep;
	int error;

	error = FUNC0(cls_session, cls_conn, is_leading);
	if (error)
		return error;

	/* the transport ep handle comes from user space so it must be
	 * verified against the global ib connections list */
	ep = FUNC1(transport_eph);
	if (!ep) {
		FUNC4("can't bind eph %llx\n",
			 (unsigned long long)transport_eph);
		return -EINVAL;
	}
	ib_conn = ep->dd_data;

	if (FUNC2(ib_conn))
		return -ENOMEM;

	/* binds the iSER connection retrieved from the previously
	 * connected ep_handle to the iSCSI layer connection. exchanges
	 * connection pointers */
	FUNC5("binding iscsi/iser conn %p %p to ib_conn %p\n",
		  conn, conn->dd_data, ib_conn);
	iser_conn = conn->dd_data;
	ib_conn->iser_conn = iser_conn;
	iser_conn->ib_conn  = ib_conn;
	FUNC3(ib_conn); /* ref iscsi/ib conn binding */
	return 0;
}