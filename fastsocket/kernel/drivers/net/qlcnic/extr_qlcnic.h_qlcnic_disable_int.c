
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_host_sds_ring {int crb_intr_mask; } ;


 int writel (int ,int ) ;

__attribute__((used)) static inline void qlcnic_disable_int(struct qlcnic_host_sds_ring *sds_ring)
{
 writel(0, sds_ring->crb_intr_mask);
}
