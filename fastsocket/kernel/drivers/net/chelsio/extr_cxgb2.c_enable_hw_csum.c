
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int flags; int tp; } ;


 int TSO_CAPABLE ;
 int UDP_CSUM_CAPABLE ;
 int t1_tp_set_ip_checksum_offload (int ,int) ;
 int t1_tp_set_tcp_checksum_offload (int ,int) ;
 int t1_tp_set_udp_checksum_offload (int ,int) ;

__attribute__((used)) static void enable_hw_csum(struct adapter *adapter)
{
 if (adapter->flags & TSO_CAPABLE)
  t1_tp_set_ip_checksum_offload(adapter->tp, 1);
 if (adapter->flags & UDP_CSUM_CAPABLE)
  t1_tp_set_udp_checksum_offload(adapter->tp, 1);
 t1_tp_set_tcp_checksum_offload(adapter->tp, 1);
}
