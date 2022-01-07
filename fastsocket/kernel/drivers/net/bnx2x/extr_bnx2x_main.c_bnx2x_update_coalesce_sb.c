
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct bnx2x {int dummy; } ;


 int HC_INDEX_ETH_RX_CQ_CONS ;
 int HC_INDEX_ETH_TX_CQ_CONS_COS0 ;
 int HC_INDEX_ETH_TX_CQ_CONS_COS1 ;
 int HC_INDEX_ETH_TX_CQ_CONS_COS2 ;
 int bnx2x_update_coalesce_sb_index (struct bnx2x*,int ,int ,int,int ) ;

__attribute__((used)) static void bnx2x_update_coalesce_sb(struct bnx2x *bp, u8 fw_sb_id,
         u16 tx_usec, u16 rx_usec)
{
 bnx2x_update_coalesce_sb_index(bp, fw_sb_id, HC_INDEX_ETH_RX_CQ_CONS,
        0, rx_usec);
 bnx2x_update_coalesce_sb_index(bp, fw_sb_id,
           HC_INDEX_ETH_TX_CQ_CONS_COS0, 0,
           tx_usec);
 bnx2x_update_coalesce_sb_index(bp, fw_sb_id,
           HC_INDEX_ETH_TX_CQ_CONS_COS1, 0,
           tx_usec);
 bnx2x_update_coalesce_sb_index(bp, fw_sb_id,
           HC_INDEX_ETH_TX_CQ_CONS_COS2, 0,
           tx_usec);
}
