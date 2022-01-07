
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ done; } ;
struct TYPE_4__ {TYPE_1__ segment; } ;
struct iscsi_tcp_conn {TYPE_2__ in; } ;


 scalar_t__ iscsi_tcp_hdr_recv_done ;

inline int iscsi_tcp_recv_segment_is_hdr(struct iscsi_tcp_conn *tcp_conn)
{
 return tcp_conn->in.segment.done == iscsi_tcp_hdr_recv_done;
}
