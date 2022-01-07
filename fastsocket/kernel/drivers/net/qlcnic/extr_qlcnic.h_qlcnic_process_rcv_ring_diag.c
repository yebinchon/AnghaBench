
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qlcnic_host_sds_ring {TYPE_3__* adapter; } ;
struct TYPE_6__ {TYPE_2__* ahw; } ;
struct TYPE_5__ {TYPE_1__* hw_ops; } ;
struct TYPE_4__ {int (* process_lb_rcv_ring_diag ) (struct qlcnic_host_sds_ring*) ;} ;


 int stub1 (struct qlcnic_host_sds_ring*) ;

__attribute__((used)) static inline void
qlcnic_process_rcv_ring_diag(struct qlcnic_host_sds_ring *sds_ring)
{
 sds_ring->adapter->ahw->hw_ops->process_lb_rcv_ring_diag(sds_ring);
}
