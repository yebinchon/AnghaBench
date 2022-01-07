
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_adapter {int mr; scalar_t__ active_ports; } ;


 int ehea_reg_kernel_mr (struct ehea_adapter*,int *) ;

__attribute__((used)) static int ehea_add_adapter_mr(struct ehea_adapter *adapter)
{
 if (adapter->active_ports)
  return 0;

 return ehea_reg_kernel_mr(adapter, &adapter->mr);
}
