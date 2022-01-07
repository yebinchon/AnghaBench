
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iscsi_session {int lock; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int EPERM ;
 int __iscsi_conn_send_pdu (struct iscsi_conn*,struct iscsi_hdr*,char*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iscsi_conn_send_pdu(struct iscsi_cls_conn *cls_conn, struct iscsi_hdr *hdr,
   char *data, uint32_t data_size)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_session *session = conn->session;
 int err = 0;

 spin_lock_bh(&session->lock);
 if (!__iscsi_conn_send_pdu(conn, hdr, data, data_size))
  err = -EPERM;
 spin_unlock_bh(&session->lock);
 return err;
}
