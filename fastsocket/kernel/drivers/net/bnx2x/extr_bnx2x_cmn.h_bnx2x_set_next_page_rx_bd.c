
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_rx_bd {void* addr_lo; void* addr_hi; } ;
struct bnx2x_fastpath {scalar_t__ rx_desc_mapping; struct eth_rx_bd* rx_desc_ring; } ;


 int BCM_PAGE_SIZE ;
 int NUM_RX_RINGS ;
 int RX_DESC_CNT ;
 int U64_HI (scalar_t__) ;
 int U64_LO (scalar_t__) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static inline void bnx2x_set_next_page_rx_bd(struct bnx2x_fastpath *fp)
{
 int i;

 for (i = 1; i <= NUM_RX_RINGS; i++) {
  struct eth_rx_bd *rx_bd;

  rx_bd = &fp->rx_desc_ring[RX_DESC_CNT * i - 2];
  rx_bd->addr_hi =
   cpu_to_le32(U64_HI(fp->rx_desc_mapping +
        BCM_PAGE_SIZE*(i % NUM_RX_RINGS)));
  rx_bd->addr_lo =
   cpu_to_le32(U64_LO(fp->rx_desc_mapping +
        BCM_PAGE_SIZE*(i % NUM_RX_RINGS)));
 }
}
