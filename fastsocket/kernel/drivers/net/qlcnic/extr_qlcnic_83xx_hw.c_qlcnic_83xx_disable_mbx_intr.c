
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_3__ {scalar_t__ pci_base0; } ;


 int QLCNIC_DEF_INT_MASK ;
 int QLCNIC_MBX_INTR_ENBL ;
 scalar_t__ QLCRDX (TYPE_1__*,int ) ;
 int QLCWRX (TYPE_1__*,int ,int ) ;
 int writel (int,scalar_t__) ;

void qlcnic_83xx_disable_mbx_intr(struct qlcnic_adapter *adapter)
{
 u32 mask;

 mask = QLCRDX(adapter->ahw, QLCNIC_DEF_INT_MASK);
 writel(1, adapter->ahw->pci_base0 + mask);
 QLCWRX(adapter->ahw, QLCNIC_MBX_INTR_ENBL, 0);
}
