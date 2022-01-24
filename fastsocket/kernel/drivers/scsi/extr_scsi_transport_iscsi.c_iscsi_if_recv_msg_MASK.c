#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_type; } ;
struct TYPE_19__ {int /*<<< orphan*/  data_size; int /*<<< orphan*/  hdr_size; int /*<<< orphan*/  cid; int /*<<< orphan*/  sid; } ;
struct TYPE_18__ {int /*<<< orphan*/  flag; int /*<<< orphan*/  cid; int /*<<< orphan*/  sid; } ;
struct TYPE_16__ {int /*<<< orphan*/  cid; int /*<<< orphan*/  sid; } ;
struct TYPE_15__ {int /*<<< orphan*/  transport_eph; int /*<<< orphan*/  is_leading; int /*<<< orphan*/  cid; int /*<<< orphan*/  sid; } ;
struct TYPE_14__ {int /*<<< orphan*/  sid; } ;
struct TYPE_13__ {int /*<<< orphan*/  queue_depth; int /*<<< orphan*/  cmds_max; int /*<<< orphan*/  initial_cmdsn; int /*<<< orphan*/  ep_handle; } ;
struct TYPE_12__ {int /*<<< orphan*/  queue_depth; int /*<<< orphan*/  cmds_max; int /*<<< orphan*/  initial_cmdsn; } ;
struct TYPE_20__ {TYPE_8__ send_pdu; TYPE_7__ stop_conn; TYPE_5__ start_conn; TYPE_4__ b_conn; TYPE_3__ d_session; TYPE_2__ c_bound_session; TYPE_1__ c_session; } ;
struct TYPE_17__ {int /*<<< orphan*/  retcode; } ;
struct iscsi_uevent {TYPE_9__ u; TYPE_6__ r; int /*<<< orphan*/  transport_handle; } ;
struct iscsi_transport {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* send_pdu ) (struct iscsi_cls_conn*,struct iscsi_hdr*,char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stop_conn ) (struct iscsi_cls_conn*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* start_conn ) (struct iscsi_cls_conn*) ;int /*<<< orphan*/  ep_connect; int /*<<< orphan*/  (* bind_conn ) (struct iscsi_cls_session*,struct iscsi_cls_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* destroy_session ) (struct iscsi_cls_session*) ;} ;
struct iscsi_internal {struct iscsi_transport* iscsi_transport; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_endpoint {struct iscsi_cls_conn* conn; int /*<<< orphan*/  id; } ;
struct iscsi_cls_session {int /*<<< orphan*/  unbind_work; } ;
struct iscsi_cls_conn {int /*<<< orphan*/  ep_mutex; struct iscsi_endpoint* ep; } ;
struct TYPE_11__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  ISCSI_NL_GRP_ISCSID ; 
 int /*<<< orphan*/  ISCSI_NL_GRP_UIP ; 
#define  ISCSI_UEVENT_BIND_CONN 156 
#define  ISCSI_UEVENT_CREATE_BOUND_SESSION 155 
#define  ISCSI_UEVENT_CREATE_CONN 154 
#define  ISCSI_UEVENT_CREATE_SESSION 153 
#define  ISCSI_UEVENT_DELETE_CHAP 152 
#define  ISCSI_UEVENT_DEL_FLASHNODE 151 
#define  ISCSI_UEVENT_DESTROY_CONN 150 
#define  ISCSI_UEVENT_DESTROY_SESSION 149 
#define  ISCSI_UEVENT_GET_CHAP 148 
#define  ISCSI_UEVENT_GET_STATS 147 
#define  ISCSI_UEVENT_LOGIN_FLASHNODE 146 
#define  ISCSI_UEVENT_LOGOUT_FLASHNODE 145 
#define  ISCSI_UEVENT_LOGOUT_FLASHNODE_SID 144 
#define  ISCSI_UEVENT_NEW_FLASHNODE 143 
#define  ISCSI_UEVENT_PATH_UPDATE 142 
#define  ISCSI_UEVENT_PING 141 
#define  ISCSI_UEVENT_SEND_PDU 140 
#define  ISCSI_UEVENT_SET_FLASHNODE_PARAMS 139 
#define  ISCSI_UEVENT_SET_HOST_PARAM 138 
#define  ISCSI_UEVENT_SET_IFACE_PARAMS 137 
#define  ISCSI_UEVENT_SET_PARAM 136 
#define  ISCSI_UEVENT_START_CONN 135 
#define  ISCSI_UEVENT_STOP_CONN 134 
#define  ISCSI_UEVENT_TGT_DSCVR 133 
#define  ISCSI_UEVENT_TRANSPORT_EP_CONNECT 132 
#define  ISCSI_UEVENT_TRANSPORT_EP_CONNECT_THROUGH_HOST 131 
#define  ISCSI_UEVENT_TRANSPORT_EP_DISCONNECT 130 
#define  ISCSI_UEVENT_TRANSPORT_EP_POLL 129 
#define  ISCSI_UEVENT_UNBIND_SESSION 128 
 int /*<<< orphan*/  KERN_ERR ; 
 TYPE_10__ FUNC0 (struct sk_buff*) ; 
 struct iscsi_uevent* FUNC1 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct iscsi_cls_conn*,char*) ; 
 struct iscsi_cls_conn* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 int FUNC5 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 int FUNC6 (struct iscsi_transport*,struct nlmsghdr*) ; 
 int FUNC7 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 int FUNC8 (struct iscsi_internal*,struct iscsi_endpoint*,struct iscsi_uevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 int /*<<< orphan*/  FUNC10 (struct iscsi_transport*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct iscsi_transport*,struct nlmsghdr*) ; 
 int FUNC12 (struct iscsi_transport*,struct iscsi_uevent*,int) ; 
 struct iscsi_internal* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 int FUNC15 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 int FUNC16 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 struct iscsi_endpoint* FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (struct iscsi_transport*,struct iscsi_uevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 struct iscsi_cls_session* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct iscsi_cls_session*) ; 
 int FUNC23 (struct iscsi_transport*,struct iscsi_uevent*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 int FUNC25 (struct iscsi_transport*,struct iscsi_uevent*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 int FUNC27 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 int FUNC28 (struct iscsi_transport*,struct iscsi_uevent*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (struct nlmsghdr*,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC35 (struct iscsi_cls_session*,struct iscsi_cls_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct iscsi_cls_conn*) ; 
 int /*<<< orphan*/  FUNC37 (struct iscsi_cls_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct iscsi_cls_conn*,struct iscsi_hdr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC40(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
{
	int err = 0;
	struct iscsi_uevent *ev = FUNC1(nlh);
	struct iscsi_transport *transport = NULL;
	struct iscsi_internal *priv;
	struct iscsi_cls_session *session;
	struct iscsi_cls_conn *conn;
	struct iscsi_endpoint *ep = NULL;

	if (nlh->nlmsg_type == ISCSI_UEVENT_PATH_UPDATE)
		*group = ISCSI_NL_GRP_UIP;
	else
		*group = ISCSI_NL_GRP_ISCSID;

	priv = FUNC13(FUNC19(ev->transport_handle));
	if (!priv)
		return -EINVAL;
	transport = priv->iscsi_transport;

	if (!FUNC39(transport->owner))
		return -EINVAL;

	switch (nlh->nlmsg_type) {
	case ISCSI_UEVENT_CREATE_SESSION:
		err = FUNC8(priv, ep, ev,
					      FUNC0(skb).pid,
					      ev->u.c_session.initial_cmdsn,
					      ev->u.c_session.cmds_max,
					      ev->u.c_session.queue_depth);
		break;
	case ISCSI_UEVENT_CREATE_BOUND_SESSION:
		ep = FUNC17(ev->u.c_bound_session.ep_handle);
		if (!ep) {
			err = -EINVAL;
			break;
		}

		err = FUNC8(priv, ep, ev,
					FUNC0(skb).pid,
					ev->u.c_bound_session.initial_cmdsn,
					ev->u.c_bound_session.cmds_max,
					ev->u.c_bound_session.queue_depth);
		break;
	case ISCSI_UEVENT_DESTROY_SESSION:
		session = FUNC21(ev->u.d_session.sid);
		if (session)
			transport->destroy_session(session);
		else
			err = -EINVAL;
		break;
	case ISCSI_UEVENT_UNBIND_SESSION:
		session = FUNC21(ev->u.d_session.sid);
		if (session)
			FUNC33(FUNC22(session),
					&session->unbind_work);
		else
			err = -EINVAL;
		break;
	case ISCSI_UEVENT_CREATE_CONN:
		err = FUNC7(transport, ev);
		break;
	case ISCSI_UEVENT_DESTROY_CONN:
		err = FUNC9(transport, ev);
		break;
	case ISCSI_UEVENT_BIND_CONN:
		session = FUNC21(ev->u.b_conn.sid);
		conn = FUNC3(ev->u.b_conn.sid, ev->u.b_conn.cid);

		if (conn && conn->ep)
			FUNC10(transport, conn->ep->id);

		if (!session || !conn) {
			err = -EINVAL;
			break;
		}

		ev->r.retcode =	transport->bind_conn(session, conn,
						ev->u.b_conn.transport_eph,
						ev->u.b_conn.is_leading);
		if (ev->r.retcode || !transport->ep_connect)
			break;

		ep = FUNC17(ev->u.b_conn.transport_eph);
		if (ep) {
			ep->conn = conn;

			FUNC30(&conn->ep_mutex);
			conn->ep = ep;
			FUNC31(&conn->ep_mutex);
		} else
			FUNC2(KERN_ERR, conn,
					      "Could not set ep conn "
					      "binding\n");
		break;
	case ISCSI_UEVENT_SET_PARAM:
		err = FUNC26(transport, ev);
		break;
	case ISCSI_UEVENT_START_CONN:
		conn = FUNC3(ev->u.start_conn.sid, ev->u.start_conn.cid);
		if (conn)
			ev->r.retcode = transport->start_conn(conn);
		else
			err = -EINVAL;
		break;
	case ISCSI_UEVENT_STOP_CONN:
		conn = FUNC3(ev->u.stop_conn.sid, ev->u.stop_conn.cid);
		if (conn)
			transport->stop_conn(conn, ev->u.stop_conn.flag);
		else
			err = -EINVAL;
		break;
	case ISCSI_UEVENT_SEND_PDU:
		conn = FUNC3(ev->u.send_pdu.sid, ev->u.send_pdu.cid);
		if (conn)
			ev->r.retcode =	transport->send_pdu(conn,
				(struct iscsi_hdr*)((char*)ev + sizeof(*ev)),
				(char*)ev + sizeof(*ev) + ev->u.send_pdu.hdr_size,
				ev->u.send_pdu.data_size);
		else
			err = -EINVAL;
		break;
	case ISCSI_UEVENT_GET_STATS:
		err = FUNC11(transport, nlh);
		break;
	case ISCSI_UEVENT_TRANSPORT_EP_CONNECT:
	case ISCSI_UEVENT_TRANSPORT_EP_POLL:
	case ISCSI_UEVENT_TRANSPORT_EP_DISCONNECT:
	case ISCSI_UEVENT_TRANSPORT_EP_CONNECT_THROUGH_HOST:
		err = FUNC12(transport, ev, nlh->nlmsg_type);
		break;
	case ISCSI_UEVENT_TGT_DSCVR:
		err = FUNC28(transport, ev);
		break;
	case ISCSI_UEVENT_SET_HOST_PARAM:
		err = FUNC24(transport, ev);
		break;
	case ISCSI_UEVENT_PATH_UPDATE:
		err = FUNC27(transport, ev);
		break;
	case ISCSI_UEVENT_SET_IFACE_PARAMS:
		err = FUNC25(transport, ev,
					     FUNC32(nlh, sizeof(*ev)));
		break;
	case ISCSI_UEVENT_PING:
		err = FUNC20(transport, ev);
		break;
	case ISCSI_UEVENT_GET_CHAP:
		err = FUNC6(transport, nlh);
		break;
	case ISCSI_UEVENT_DELETE_CHAP:
		err = FUNC5(transport, ev);
		break;
	case ISCSI_UEVENT_SET_FLASHNODE_PARAMS:
		err = FUNC23(transport, ev,
						FUNC32(nlh,
							      sizeof(*ev)));
		break;
	case ISCSI_UEVENT_NEW_FLASHNODE:
		err = FUNC18(transport, ev,
					  FUNC32(nlh, sizeof(*ev)));
		break;
	case ISCSI_UEVENT_DEL_FLASHNODE:
		err = FUNC4(transport, ev);
		break;
	case ISCSI_UEVENT_LOGIN_FLASHNODE:
		err = FUNC14(transport, ev);
		break;
	case ISCSI_UEVENT_LOGOUT_FLASHNODE:
		err = FUNC15(transport, ev);
		break;
	case ISCSI_UEVENT_LOGOUT_FLASHNODE_SID:
		err = FUNC16(transport, ev);
		break;
	default:
		err = -ENOSYS;
		break;
	}

	FUNC29(transport->owner);
	return err;
}