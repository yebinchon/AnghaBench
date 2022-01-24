#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_3__ {int error; int /*<<< orphan*/  sid; int /*<<< orphan*/  cid; } ;
struct TYPE_4__ {TYPE_1__ connerror; } ;
struct iscsi_uevent {TYPE_2__ r; int /*<<< orphan*/  type; int /*<<< orphan*/  transport_handle; } ;
struct iscsi_internal {int dummy; } ;
struct iscsi_cls_conn {int /*<<< orphan*/  cid; int /*<<< orphan*/  transport; } ;
typedef  enum iscsi_err { ____Placeholder_iscsi_err } iscsi_err ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ISCSI_KEVENT_CONN_ERROR ; 
 int /*<<< orphan*/  ISCSI_NL_GRP_ISCSID ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 struct iscsi_uevent* FUNC0 (struct nlmsghdr*) ; 
 int FUNC1 (int) ; 
 struct nlmsghdr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct iscsi_cls_conn*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_cls_conn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct iscsi_internal* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct iscsi_cls_conn *conn, enum iscsi_err error)
{
	struct nlmsghdr	*nlh;
	struct sk_buff	*skb;
	struct iscsi_uevent *ev;
	struct iscsi_internal *priv;
	int len = FUNC1(sizeof(*ev));

	priv = FUNC7(conn->transport);
	if (!priv)
		return;

	skb = FUNC3(len, GFP_ATOMIC);
	if (!skb) {
		FUNC4(KERN_ERR, conn, "gracefully ignored "
				      "conn error (%d)\n", error);
		return;
	}

	nlh = FUNC2(skb, 0, 0, 0, (len - sizeof(*nlh)), 0);
	ev = FUNC0(nlh);
	ev->transport_handle = FUNC6(conn->transport);
	ev->type = ISCSI_KEVENT_CONN_ERROR;
	ev->r.connerror.error = error;
	ev->r.connerror.cid = conn->cid;
	ev->r.connerror.sid = FUNC5(conn);

	FUNC8(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);

	FUNC4(KERN_INFO, conn, "detected conn error (%d)\n",
			      error);
}