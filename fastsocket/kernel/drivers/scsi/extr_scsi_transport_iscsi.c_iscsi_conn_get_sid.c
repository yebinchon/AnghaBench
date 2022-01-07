
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct iscsi_cls_session {int sid; } ;
struct TYPE_2__ {int parent; } ;
struct iscsi_cls_conn {TYPE_1__ dev; } ;


 struct iscsi_cls_session* iscsi_dev_to_session (int ) ;

__attribute__((used)) static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
{
 struct iscsi_cls_session *sess = iscsi_dev_to_session(conn->dev.parent);
 return sess->sid;
}
