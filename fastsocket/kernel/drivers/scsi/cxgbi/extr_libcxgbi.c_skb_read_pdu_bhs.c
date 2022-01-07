
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct iscsi_tcp_conn {int dummy; } ;
struct iscsi_conn {scalar_t__ hdrdgst_en; struct iscsi_tcp_conn* dd_data; } ;


 int CXGBI_DBG_PDU_RX ;
 int EIO ;
 int ISCSI_ERR_HDR_DGST ;
 int ISCSI_ERR_PROTO ;
 int SKCBF_RX_HCRC_ERR ;
 int cxgbi_skcb_flags (struct sk_buff*) ;
 scalar_t__ cxgbi_skcb_test_flag (struct sk_buff*,int ) ;
 int iscsi_conn_failure (struct iscsi_conn*,int ) ;
 int iscsi_tcp_recv_segment_is_hdr (struct iscsi_tcp_conn*) ;
 int log_debug (int,char*,struct iscsi_conn*,struct sk_buff*,int ,int ) ;
 int pr_info (char*,struct iscsi_conn*,struct sk_buff*) ;
 int read_pdu_skb (struct iscsi_conn*,struct sk_buff*,int ,int ) ;

__attribute__((used)) static int skb_read_pdu_bhs(struct iscsi_conn *conn, struct sk_buff *skb)
{
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;

 log_debug(1 << CXGBI_DBG_PDU_RX,
  "conn 0x%p, skb 0x%p, len %u, flag 0x%lx.\n",
  conn, skb, skb->len, cxgbi_skcb_flags(skb));

 if (!iscsi_tcp_recv_segment_is_hdr(tcp_conn)) {
  pr_info("conn 0x%p, skb 0x%p, not hdr.\n", conn, skb);
  iscsi_conn_failure(conn, ISCSI_ERR_PROTO);
  return -EIO;
 }

 if (conn->hdrdgst_en &&
     cxgbi_skcb_test_flag(skb, SKCBF_RX_HCRC_ERR)) {
  pr_info("conn 0x%p, skb 0x%p, hcrc.\n", conn, skb);
  iscsi_conn_failure(conn, ISCSI_ERR_HDR_DGST);
  return -EIO;
 }

 return read_pdu_skb(conn, skb, 0, 0);
}
