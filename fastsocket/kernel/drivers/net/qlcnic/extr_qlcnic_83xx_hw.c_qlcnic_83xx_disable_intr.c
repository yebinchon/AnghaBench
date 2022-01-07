
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_host_sds_ring {int crb_intr_mask; } ;
struct qlcnic_adapter {int dummy; } ;


 int writel (int,int ) ;

void qlcnic_83xx_disable_intr(struct qlcnic_adapter *adapter,
         struct qlcnic_host_sds_ring *sds_ring)
{
 writel(1, sds_ring->crb_intr_mask);
}
