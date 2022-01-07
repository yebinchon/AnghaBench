
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct TYPE_4__ {int data_segment; TYPE_1__* hdr; } ;
struct hash_desc {int dummy; } ;
struct iscsi_sw_tcp_conn {TYPE_2__ out; struct hash_desc tx_hash; } ;
struct iscsi_conn {scalar_t__ datadgst_en; struct iscsi_tcp_conn* dd_data; } ;
struct TYPE_3__ {int dlength; } ;


 int ISCSI_SW_TCP_DBG (struct iscsi_conn*,char*,size_t,char*) ;
 int WARN_ON (int) ;
 scalar_t__ iscsi_padded (unsigned int) ;
 int iscsi_segment_init_linear (int *,void*,size_t,int *,struct hash_desc*) ;
 unsigned int ntoh24 (int ) ;

__attribute__((used)) static void
iscsi_sw_tcp_send_linear_data_prep(struct iscsi_conn *conn, void *data,
       size_t len)
{
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
 struct hash_desc *tx_hash = ((void*)0);
 unsigned int hdr_spec_len;

 ISCSI_SW_TCP_DBG(conn, "datalen=%zd %s\n", len, conn->datadgst_en ?
    "digest enabled" : "digest disabled");



 hdr_spec_len = ntoh24(tcp_sw_conn->out.hdr->dlength);
 WARN_ON(iscsi_padded(len) != iscsi_padded(hdr_spec_len));

 if (conn->datadgst_en)
  tx_hash = &tcp_sw_conn->tx_hash;

 iscsi_segment_init_linear(&tcp_sw_conn->out.data_segment,
    data, len, ((void*)0), tx_hash);
}
