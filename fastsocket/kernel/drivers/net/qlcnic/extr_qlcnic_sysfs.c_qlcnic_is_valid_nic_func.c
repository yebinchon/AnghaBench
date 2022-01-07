
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qlcnic_adapter {TYPE_2__* npars; TYPE_1__* ahw; } ;
struct TYPE_4__ {scalar_t__ pci_func; } ;
struct TYPE_3__ {int act_pci_func; } ;



__attribute__((used)) static int qlcnic_is_valid_nic_func(struct qlcnic_adapter *adapter, u8 pci_func)
{
 int i;
 for (i = 0; i < adapter->ahw->act_pci_func; i++) {
  if (adapter->npars[i].pci_func == pci_func)
   return i;
 }

 return -1;
}
