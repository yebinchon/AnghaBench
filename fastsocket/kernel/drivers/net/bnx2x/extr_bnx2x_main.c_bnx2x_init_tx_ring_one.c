
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct eth_tx_next_bd {void* addr_lo; void* addr_hi; } ;
struct TYPE_6__ {int header; } ;
struct TYPE_7__ {scalar_t__ prod; scalar_t__ zero_fill1; TYPE_2__ header; } ;
struct TYPE_8__ {TYPE_3__ data; } ;
struct bnx2x_fp_txdata {scalar_t__ tx_pkt; scalar_t__ tx_bd_cons; scalar_t__ tx_bd_prod; scalar_t__ tx_pkt_cons; scalar_t__ tx_pkt_prod; TYPE_4__ tx_db; int * tx_cons_sb; scalar_t__ tx_desc_mapping; TYPE_1__* tx_desc_ring; } ;
struct TYPE_5__ {struct eth_tx_next_bd next_bd; } ;


 int BCM_PAGE_SIZE ;
 int DOORBELL_HDR_DB_TYPE ;
 int NUM_TX_RINGS ;
 int SET_FLAG (int ,int ,int) ;
 int TX_DESC_CNT ;
 int U64_HI (scalar_t__) ;
 int U64_LO (scalar_t__) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void bnx2x_init_tx_ring_one(struct bnx2x_fp_txdata *txdata)
{
 int i;

 for (i = 1; i <= NUM_TX_RINGS; i++) {
  struct eth_tx_next_bd *tx_next_bd =
   &txdata->tx_desc_ring[TX_DESC_CNT * i - 1].next_bd;

  tx_next_bd->addr_hi =
   cpu_to_le32(U64_HI(txdata->tx_desc_mapping +
        BCM_PAGE_SIZE*(i % NUM_TX_RINGS)));
  tx_next_bd->addr_lo =
   cpu_to_le32(U64_LO(txdata->tx_desc_mapping +
        BCM_PAGE_SIZE*(i % NUM_TX_RINGS)));
 }

 *txdata->tx_cons_sb = cpu_to_le16(0);

 SET_FLAG(txdata->tx_db.data.header.header, DOORBELL_HDR_DB_TYPE, 1);
 txdata->tx_db.data.zero_fill1 = 0;
 txdata->tx_db.data.prod = 0;

 txdata->tx_pkt_prod = 0;
 txdata->tx_pkt_cons = 0;
 txdata->tx_bd_prod = 0;
 txdata->tx_bd_cons = 0;
 txdata->tx_pkt = 0;
}
