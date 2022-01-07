
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bna_rxf {int vlan_pending_bitmask; } ;


 int bna_bfi_rx_vlan_filter_set (struct bna_rxf*,int) ;

__attribute__((used)) static int
bna_rxf_vlan_cfg_apply(struct bna_rxf *rxf)
{
 u8 vlan_pending_bitmask;
 int block_idx = 0;

 if (rxf->vlan_pending_bitmask) {
  vlan_pending_bitmask = rxf->vlan_pending_bitmask;
  while (!(vlan_pending_bitmask & 0x1)) {
   block_idx++;
   vlan_pending_bitmask >>= 1;
  }
  rxf->vlan_pending_bitmask &= ~(1 << block_idx);
  bna_bfi_rx_vlan_filter_set(rxf, block_idx);
  return 1;
 }

 return 0;
}
