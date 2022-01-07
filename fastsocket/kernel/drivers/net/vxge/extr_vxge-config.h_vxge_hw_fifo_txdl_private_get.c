
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxge_hw_fifo_txd {scalar_t__ host_control; } ;



__attribute__((used)) static inline void *vxge_hw_fifo_txdl_private_get(void *txdlh)
{
 struct vxge_hw_fifo_txd *txdp = (struct vxge_hw_fifo_txd *)txdlh;

 return (void *)(size_t)txdp->host_control;
}
