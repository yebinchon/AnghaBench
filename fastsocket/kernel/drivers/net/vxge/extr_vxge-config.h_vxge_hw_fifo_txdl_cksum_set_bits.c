
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vxge_hw_fifo_txd {int control_1; } ;



__attribute__((used)) static inline void vxge_hw_fifo_txdl_cksum_set_bits(void *txdlh, u64 cksum_bits)
{
 struct vxge_hw_fifo_txd *txdp = (struct vxge_hw_fifo_txd *)txdlh;
 txdp->control_1 |= cksum_bits;
}
