
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {scalar_t__ pci_base0; } ;


 int QLCNIC_DEF_INT_MASK ;
 scalar_t__ QLCRDX (TYPE_1__*,int ) ;
 int writel (int ,scalar_t__) ;

inline void qlcnic_83xx_enable_legacy_msix_mbx_intr(struct qlcnic_adapter
          *adapter)
{
 u32 mask;






 mask = QLCRDX(adapter->ahw, QLCNIC_DEF_INT_MASK);
 writel(0, adapter->ahw->pci_base0 + mask);
}
