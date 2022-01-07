
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_counter {int rx_frames; int tx_frames; int rx_bytes; int tx_bytes; } ;
struct ib_pma_portcounters {void* port_rcv_packets; void* port_xmit_packets; void* port_rcv_data; void* port_xmit_data; } ;


 int be64_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static void edit_counter(struct mlx4_counter *cnt,
     struct ib_pma_portcounters *pma_cnt)
{
 pma_cnt->port_xmit_data = cpu_to_be32((be64_to_cpu(cnt->tx_bytes)>>2));
 pma_cnt->port_rcv_data = cpu_to_be32((be64_to_cpu(cnt->rx_bytes)>>2));
 pma_cnt->port_xmit_packets = cpu_to_be32(be64_to_cpu(cnt->tx_frames));
 pma_cnt->port_rcv_packets = cpu_to_be32(be64_to_cpu(cnt->rx_frames));
}
