
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rx_ring {int rx_errors; } ;
struct nic_stats {int rx_crc_err; int rx_frame_len_err; int rx_preamble_err; int rx_undersize_err; int rx_oversize_err; int rx_code_err; int rx_err_count; } ;
struct ql_adapter {struct nic_stats nic_stats; } ;





 int IB_MAC_IOCB_RSP_ERR_MASK ;




__attribute__((used)) static void ql_categorize_rx_err(struct ql_adapter *qdev, u8 rx_err,
     struct rx_ring *rx_ring)
{
 struct nic_stats *stats = &qdev->nic_stats;

 stats->rx_err_count++;
 rx_ring->rx_errors++;

 switch (rx_err & IB_MAC_IOCB_RSP_ERR_MASK) {
 case 133:
  stats->rx_code_err++;
  break;
 case 130:
  stats->rx_oversize_err++;
  break;
 case 128:
  stats->rx_undersize_err++;
  break;
 case 129:
  stats->rx_preamble_err++;
  break;
 case 131:
  stats->rx_frame_len_err++;
  break;
 case 132:
  stats->rx_crc_err++;
 default:
  break;
 }
}
