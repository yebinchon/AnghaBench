
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_iser_conn {TYPE_1__* ib_conn; } ;
struct iscsi_hdr {int flags; int opcode; } ;
struct iscsi_conn {struct iscsi_iser_conn* dd_data; } ;
struct TYPE_2__ {int post_recv_buf_count; int post_send_buf_count; } ;


 int ENOMEM ;
 int ISCSI_FULL_FEATURE_PHASE ;
 int ISER_MIN_POSTED_RX ;
 int WARN_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 int iser_dbg (char*,int ,...) ;
 scalar_t__ iser_post_recvm (TYPE_1__*,int ) ;

__attribute__((used)) static int iser_post_rx_bufs(struct iscsi_conn *conn, struct iscsi_hdr *req)
{
 struct iscsi_iser_conn *iser_conn = conn->dd_data;

 iser_dbg("req op %x flags %x\n", req->opcode, req->flags);

 if ((req->flags & ISCSI_FULL_FEATURE_PHASE) != ISCSI_FULL_FEATURE_PHASE)
  return 0;






 WARN_ON(iser_conn->ib_conn->post_recv_buf_count != 1);
 WARN_ON(atomic_read(&iser_conn->ib_conn->post_send_buf_count) != 0);

 iser_dbg("Initially post: %d\n", ISER_MIN_POSTED_RX);

 if (iser_post_recvm(iser_conn->ib_conn, ISER_MIN_POSTED_RX))
  return -ENOMEM;

 return 0;
}
