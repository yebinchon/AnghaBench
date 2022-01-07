
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_tcp_conn {int iscsi_conn; struct iscsi_sw_tcp_conn* dd_data; } ;
struct TYPE_3__ {int total_size; int size; } ;
struct TYPE_4__ {TYPE_1__ segment; TYPE_1__ data_segment; } ;
struct iscsi_sw_tcp_conn {TYPE_2__ out; } ;
struct iscsi_segment {int dummy; } ;


 int ISCSI_SW_TCP_DBG (int ,char*,int ,int ) ;

__attribute__((used)) static int iscsi_sw_tcp_send_hdr_done(struct iscsi_tcp_conn *tcp_conn,
          struct iscsi_segment *segment)
{
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;

 tcp_sw_conn->out.segment = tcp_sw_conn->out.data_segment;
 ISCSI_SW_TCP_DBG(tcp_conn->iscsi_conn,
    "Header done. Next segment size %u total_size %u\n",
    tcp_sw_conn->out.segment.size,
    tcp_sw_conn->out.segment.total_size);
 return 0;
}
