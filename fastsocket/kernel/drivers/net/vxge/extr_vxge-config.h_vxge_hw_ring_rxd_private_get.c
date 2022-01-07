
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxge_hw_ring_rxd_1 {scalar_t__ host_control; } ;



__attribute__((used)) static inline void *vxge_hw_ring_rxd_private_get(void *rxdh)
{
 struct vxge_hw_ring_rxd_1 *rxdp = (struct vxge_hw_ring_rxd_1 *)rxdh;
 return (void *)(size_t)rxdp->host_control;
}
