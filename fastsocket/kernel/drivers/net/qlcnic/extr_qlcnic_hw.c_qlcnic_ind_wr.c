
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int pci_base0; } ;


 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_wrt_reg_indirect (struct qlcnic_adapter*,int ,int ) ;
 int qlcnic_write_window_reg (int ,int ,int ) ;

void qlcnic_ind_wr(struct qlcnic_adapter *adapter, u32 addr, u32 data)
{
 if (qlcnic_82xx_check(adapter))
  qlcnic_write_window_reg(addr, adapter->ahw->pci_base0, data);
 else
  qlcnic_83xx_wrt_reg_indirect(adapter, addr, data);
}
