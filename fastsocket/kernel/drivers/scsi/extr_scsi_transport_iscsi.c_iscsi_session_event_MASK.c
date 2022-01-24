#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  host_no; } ;
struct TYPE_6__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  host_no; } ;
struct TYPE_5__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  host_no; } ;
struct TYPE_8__ {TYPE_3__ unbind_session; TYPE_2__ c_session_ret; TYPE_1__ d_session; } ;
struct iscsi_uevent {int type; TYPE_4__ r; int /*<<< orphan*/  transport_handle; } ;
struct iscsi_internal {int dummy; } ;
struct iscsi_cls_session {int /*<<< orphan*/  sid; int /*<<< orphan*/  transport; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;
typedef  enum iscsi_uevent_e { ____Placeholder_iscsi_uevent_e } iscsi_uevent_e ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cls_session*,char*,int,int) ; 
#define  ISCSI_KEVENT_CREATE_SESSION 130 
#define  ISCSI_KEVENT_DESTROY_SESSION 129 
#define  ISCSI_KEVENT_UNBIND_SESSION 128 
 int /*<<< orphan*/  ISCSI_NL_GRP_ISCSID ; 
 int /*<<< orphan*/  KERN_ERR ; 
 struct iscsi_uevent* FUNC1 (struct nlmsghdr*) ; 
 int FUNC2 (int) ; 
 struct nlmsghdr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct iscsi_cls_session*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct iscsi_internal* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC9 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

int FUNC11(struct iscsi_cls_session *session,
			enum iscsi_uevent_e event)
{
	struct iscsi_internal *priv;
	struct Scsi_Host *shost;
	struct iscsi_uevent *ev;
	struct sk_buff  *skb;
	struct nlmsghdr *nlh;
	int rc, len = FUNC2(sizeof(*ev));

	priv = FUNC7(session->transport);
	if (!priv)
		return -EINVAL;
	shost = FUNC9(session);

	skb = FUNC4(len, GFP_KERNEL);
	if (!skb) {
		FUNC5(KERN_ERR, session,
					 "Cannot notify userspace of session "
					 "event %u\n", event);
		return -ENOMEM;
	}

	nlh = FUNC3(skb, 0, 0, 0, (len - sizeof(*nlh)), 0);
	ev = FUNC1(nlh);
	ev->transport_handle = FUNC6(session->transport);

	ev->type = event;
	switch (event) {
	case ISCSI_KEVENT_DESTROY_SESSION:
		ev->r.d_session.host_no = shost->host_no;
		ev->r.d_session.sid = session->sid;
		break;
	case ISCSI_KEVENT_CREATE_SESSION:
		ev->r.c_session_ret.host_no = shost->host_no;
		ev->r.c_session_ret.sid = session->sid;
		break;
	case ISCSI_KEVENT_UNBIND_SESSION:
		ev->r.unbind_session.host_no = shost->host_no;
		ev->r.unbind_session.sid = session->sid;
		break;
	default:
		FUNC5(KERN_ERR, session, "Invalid event "
					 "%u.\n", event);
		FUNC10(skb);
		return -EINVAL;
	}

	/*
	 * this will occur if the daemon is not up, so we just warn
	 * the user and when the daemon is restarted it will handle it
	 */
	rc = FUNC8(skb, ISCSI_NL_GRP_ISCSID, GFP_KERNEL);
	if (rc == -ESRCH)
		FUNC5(KERN_ERR, session,
					 "Cannot notify userspace of session "
					 "event %u. Check iscsi daemon\n",
					 event);

	FUNC0(session, "Completed handling event %d rc %d\n",
				event, rc);
	return rc;
}