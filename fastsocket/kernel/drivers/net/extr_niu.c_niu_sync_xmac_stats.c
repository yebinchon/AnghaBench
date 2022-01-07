
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct niu_xmac_stats {int rx_crc_errors; int rx_len_errors; int rx_code_violations; int rx_octets; int rx_hist_cnt7; int rx_hist_cnt6; int rx_hist_cnt5; int rx_hist_cnt4; int rx_hist_cnt3; int rx_hist_cnt2; int rx_hist_cnt1; int rx_bcasts; int rx_mcasts; int rx_frags; int rx_align_errors; int rx_link_faults; int tx_bytes; int tx_frames; } ;
struct TYPE_2__ {struct niu_xmac_stats xmac; } ;
struct niu {TYPE_1__ mac_stats; } ;


 int LINK_FAULT_CNT ;
 int RXMAC_ALIGN_ERR_CNT ;
 int RXMAC_BC_FRM_CNT ;
 int RXMAC_BT_CNT ;
 int RXMAC_CD_VIO_CNT ;
 int RXMAC_CRC_ER_CNT ;
 int RXMAC_FRAG_CNT ;
 int RXMAC_HIST_CNT1 ;
 int RXMAC_HIST_CNT2 ;
 int RXMAC_HIST_CNT3 ;
 int RXMAC_HIST_CNT4 ;
 int RXMAC_HIST_CNT5 ;
 int RXMAC_HIST_CNT6 ;
 int RXMAC_HIST_CNT7 ;
 int RXMAC_MC_FRM_CNT ;
 int RXMAC_MPSZER_CNT ;
 int TXMAC_BYTE_CNT ;
 int TXMAC_FRM_CNT ;
 scalar_t__ nr64_mac (int ) ;

__attribute__((used)) static void niu_sync_xmac_stats(struct niu *np)
{
 struct niu_xmac_stats *mp = &np->mac_stats.xmac;

 mp->tx_frames += nr64_mac(TXMAC_FRM_CNT);
 mp->tx_bytes += nr64_mac(TXMAC_BYTE_CNT);

 mp->rx_link_faults += nr64_mac(LINK_FAULT_CNT);
 mp->rx_align_errors += nr64_mac(RXMAC_ALIGN_ERR_CNT);
 mp->rx_frags += nr64_mac(RXMAC_FRAG_CNT);
 mp->rx_mcasts += nr64_mac(RXMAC_MC_FRM_CNT);
 mp->rx_bcasts += nr64_mac(RXMAC_BC_FRM_CNT);
 mp->rx_hist_cnt1 += nr64_mac(RXMAC_HIST_CNT1);
 mp->rx_hist_cnt2 += nr64_mac(RXMAC_HIST_CNT2);
 mp->rx_hist_cnt3 += nr64_mac(RXMAC_HIST_CNT3);
 mp->rx_hist_cnt4 += nr64_mac(RXMAC_HIST_CNT4);
 mp->rx_hist_cnt5 += nr64_mac(RXMAC_HIST_CNT5);
 mp->rx_hist_cnt6 += nr64_mac(RXMAC_HIST_CNT6);
 mp->rx_hist_cnt7 += nr64_mac(RXMAC_HIST_CNT7);
 mp->rx_octets += nr64_mac(RXMAC_BT_CNT);
 mp->rx_code_violations += nr64_mac(RXMAC_CD_VIO_CNT);
 mp->rx_len_errors += nr64_mac(RXMAC_MPSZER_CNT);
 mp->rx_crc_errors += nr64_mac(RXMAC_CRC_ER_CNT);
}
