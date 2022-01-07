
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct niu_bmac_stats {int rx_len_errors; int rx_crc_errors; int rx_align_errors; int rx_frames; int tx_frames; int tx_bytes; } ;
struct TYPE_2__ {struct niu_bmac_stats bmac; } ;
struct niu {TYPE_1__ mac_stats; } ;


 int BRXMAC_ALIGN_ERR_CNT ;
 int BRXMAC_CODE_VIOL_ERR_CNT ;
 int BRXMAC_FRAME_CNT ;
 int BTXMAC_BYTE_CNT ;
 int BTXMAC_FRM_CNT ;
 scalar_t__ nr64_mac (int ) ;

__attribute__((used)) static void niu_sync_bmac_stats(struct niu *np)
{
 struct niu_bmac_stats *mp = &np->mac_stats.bmac;

 mp->tx_bytes += nr64_mac(BTXMAC_BYTE_CNT);
 mp->tx_frames += nr64_mac(BTXMAC_FRM_CNT);

 mp->rx_frames += nr64_mac(BRXMAC_FRAME_CNT);
 mp->rx_align_errors += nr64_mac(BRXMAC_ALIGN_ERR_CNT);
 mp->rx_crc_errors += nr64_mac(BRXMAC_ALIGN_ERR_CNT);
 mp->rx_len_errors += nr64_mac(BRXMAC_CODE_VIOL_ERR_CNT);
}
