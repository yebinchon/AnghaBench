
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cid; int sid; } ;
struct TYPE_4__ {TYPE_1__ d_conn; } ;
struct iscsi_uevent {TYPE_2__ u; } ;
struct iscsi_transport {int (* destroy_conn ) (struct iscsi_cls_conn*) ;} ;
struct iscsi_cls_conn {int dummy; } ;


 int EINVAL ;
 int ISCSI_DBG_TRANS_CONN (struct iscsi_cls_conn*,char*) ;
 struct iscsi_cls_conn* iscsi_conn_lookup (int ,int ) ;
 int stub1 (struct iscsi_cls_conn*) ;

__attribute__((used)) static int
iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev)
{
 struct iscsi_cls_conn *conn;

 conn = iscsi_conn_lookup(ev->u.d_conn.sid, ev->u.d_conn.cid);
 if (!conn)
  return -EINVAL;

 ISCSI_DBG_TRANS_CONN(conn, "Destroying transport conn\n");
 if (transport->destroy_conn)
  transport->destroy_conn(conn);

 return 0;
}
