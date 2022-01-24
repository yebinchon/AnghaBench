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
struct nlmsghdr {int nlmsg_len; int /*<<< orphan*/  nlmsg_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  cid; } ;
struct TYPE_4__ {TYPE_1__ get_stats; } ;
struct iscsi_uevent {int custom_length; TYPE_2__ u; int /*<<< orphan*/  type; int /*<<< orphan*/  transport_handle; } ;
struct iscsi_transport {int /*<<< orphan*/  (* get_stats ) (struct iscsi_cls_conn*,struct iscsi_uevent*) ;} ;
struct iscsi_stats_custom {int dummy; } ;
struct iscsi_stats {int custom_length; TYPE_2__ u; int /*<<< orphan*/  type; int /*<<< orphan*/  transport_handle; } ;
struct iscsi_internal {int dummy; } ;
struct iscsi_cls_conn {int /*<<< orphan*/  transport; } ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ISCSI_NL_GRP_ISCSID ; 
 int ISCSI_STATS_CUSTOM_MAX ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct iscsi_uevent* FUNC1 (struct nlmsghdr*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct iscsi_cls_conn*,char*) ; 
 struct iscsi_cls_conn* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct iscsi_internal* FUNC9 (struct iscsi_transport*) ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct iscsi_uevent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct iscsi_cls_conn*,struct iscsi_uevent*) ; 

__attribute__((used)) static int
FUNC14(struct iscsi_transport *transport, struct nlmsghdr *nlh)
{
	struct iscsi_uevent *ev = FUNC1(nlh);
	struct iscsi_stats *stats;
	struct sk_buff *skbstat;
	struct iscsi_cls_conn *conn;
	struct nlmsghdr	*nlhstat;
	struct iscsi_uevent *evstat;
	struct iscsi_internal *priv;
	int len = FUNC3(sizeof(*ev) +
			      sizeof(struct iscsi_stats) +
			      sizeof(struct iscsi_stats_custom) *
			      ISCSI_STATS_CUSTOM_MAX);
	int err = 0;

	priv = FUNC9(transport);
	if (!priv)
		return -EINVAL;

	conn = FUNC7(ev->u.get_stats.sid, ev->u.get_stats.cid);
	if (!conn)
		return -EEXIST;

	do {
		int actual_size;

		skbstat = FUNC5(len, GFP_ATOMIC);
		if (!skbstat) {
			FUNC6(KERN_ERR, conn, "can not "
					      "deliver stats: OOM\n");
			return -ENOMEM;
		}

		nlhstat = FUNC4(skbstat, 0, 0, 0,
				      (len - sizeof(*nlhstat)), 0);
		evstat = FUNC1(nlhstat);
		FUNC11(evstat, 0, sizeof(*evstat));
		evstat->transport_handle = FUNC8(conn->transport);
		evstat->type = nlh->nlmsg_type;
		evstat->u.get_stats.cid =
			ev->u.get_stats.cid;
		evstat->u.get_stats.sid =
			ev->u.get_stats.sid;
		stats = (struct iscsi_stats *)
			((char*)evstat + sizeof(*evstat));
		FUNC11(stats, 0, sizeof(*stats));

		transport->get_stats(conn, stats);
		actual_size = FUNC3(sizeof(struct iscsi_uevent) +
					  sizeof(struct iscsi_stats) +
					  sizeof(struct iscsi_stats_custom) *
					  stats->custom_length);
		actual_size -= sizeof(*nlhstat);
		actual_size = FUNC2(actual_size);
		FUNC12(skbstat, FUNC0(actual_size));
		nlhstat->nlmsg_len = actual_size;

		err = FUNC10(skbstat, ISCSI_NL_GRP_ISCSID,
					  GFP_ATOMIC);
	} while (err < 0 && err != -ECONNREFUSED);

	return err;
}