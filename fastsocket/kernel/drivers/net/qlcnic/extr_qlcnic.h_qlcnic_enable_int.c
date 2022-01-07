
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_host_sds_ring {int crb_intr_mask; struct qlcnic_adapter* adapter; } ;
struct qlcnic_adapter {int tgt_mask_reg; } ;


 int QLCNIC_IS_MSI_FAMILY (struct qlcnic_adapter*) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void qlcnic_enable_int(struct qlcnic_host_sds_ring *sds_ring)
{
 struct qlcnic_adapter *adapter = sds_ring->adapter;

 writel(0x1, sds_ring->crb_intr_mask);

 if (!QLCNIC_IS_MSI_FAMILY(adapter))
  writel(0xfbff, adapter->tgt_mask_reg);
}
