
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct iscsi_hdr* hdr; } ;
struct iscsi_tcp_conn {TYPE_1__ in; struct iscsi_conn* iscsi_conn; } ;
struct iscsi_segment {int dummy; } ;
struct iscsi_hdr {int flags; } ;
struct iscsi_conn {int dummy; } ;


 int ISCSI_ERR_DATA_DGST ;
 int ISCSI_FLAG_DATA_STATUS ;
 int iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,int *,int ) ;
 int iscsi_tcp_dgst_verify (struct iscsi_tcp_conn*,struct iscsi_segment*) ;
 int iscsi_tcp_hdr_recv_prep (struct iscsi_tcp_conn*) ;

__attribute__((used)) static int
iscsi_tcp_process_data_in(struct iscsi_tcp_conn *tcp_conn,
     struct iscsi_segment *segment)
{
 struct iscsi_conn *conn = tcp_conn->iscsi_conn;
 struct iscsi_hdr *hdr = tcp_conn->in.hdr;
 int rc;

 if (!iscsi_tcp_dgst_verify(tcp_conn, segment))
  return ISCSI_ERR_DATA_DGST;


 if (hdr->flags & ISCSI_FLAG_DATA_STATUS) {
  rc = iscsi_complete_pdu(conn, tcp_conn->in.hdr, ((void*)0), 0);
  if (rc)
   return rc;
 }

 iscsi_tcp_hdr_recv_prep(tcp_conn);
 return 0;
}
