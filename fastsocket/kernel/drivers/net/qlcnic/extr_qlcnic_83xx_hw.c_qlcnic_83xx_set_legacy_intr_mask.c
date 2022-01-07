
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int tgt_mask_reg; } ;


 int writel (int,int ) ;

inline void qlcnic_83xx_set_legacy_intr_mask(struct qlcnic_adapter *adapter)
{
 writel(1, adapter->tgt_mask_reg);
}
