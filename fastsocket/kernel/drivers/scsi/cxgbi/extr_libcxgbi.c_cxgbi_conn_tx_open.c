
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int id; } ;
struct cxgbi_sock {struct iscsi_conn* user_data; } ;


 int CXGBI_DBG_SOCK ;
 int iscsi_conn_queue_work (struct iscsi_conn*) ;
 int log_debug (int,char*,struct cxgbi_sock*,int ) ;

void cxgbi_conn_tx_open(struct cxgbi_sock *csk)
{
 struct iscsi_conn *conn = csk->user_data;

 if (conn) {
  log_debug(1 << CXGBI_DBG_SOCK,
   "csk 0x%p, cid %d.\n", csk, conn->id);
  iscsi_conn_queue_work(conn);
 }
}
