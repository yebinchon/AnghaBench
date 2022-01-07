
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_segment {int total_copied; int total_size; } ;
struct TYPE_2__ {struct iscsi_segment segment; } ;
struct iscsi_sw_tcp_conn {TYPE_1__ out; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;



__attribute__((used)) static inline int iscsi_sw_tcp_xmit_qlen(struct iscsi_conn *conn)
{
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
 struct iscsi_segment *segment = &tcp_sw_conn->out.segment;

 return segment->total_copied - segment->total_size;
}
