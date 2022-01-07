
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vxge_hw_fifo_txd {int control_1; } ;


 int VXGE_HW_FIFO_TXD_VLAN_ENABLE ;
 int VXGE_HW_FIFO_TXD_VLAN_TAG (int ) ;

__attribute__((used)) static inline void vxge_hw_fifo_txdl_vlan_set(void *txdlh, u16 vlan_tag)
{
 struct vxge_hw_fifo_txd *txdp = (struct vxge_hw_fifo_txd *)txdlh;

 txdp->control_1 |= VXGE_HW_FIFO_TXD_VLAN_ENABLE;
 txdp->control_1 |= VXGE_HW_FIFO_TXD_VLAN_TAG(vlan_tag);
}
