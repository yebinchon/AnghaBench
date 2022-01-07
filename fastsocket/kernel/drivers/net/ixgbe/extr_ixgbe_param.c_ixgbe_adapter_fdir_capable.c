
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {size_t bd_number; } ;


 scalar_t__* FdirMode ;
 scalar_t__ IXGBE_FDIR_FILTER_ON ;
 size_t num_FdirMode ;

bool ixgbe_adapter_fdir_capable(struct ixgbe_adapter *adapter)
{
 if (num_FdirMode <= adapter->bd_number)
  return 1;

 if (FdirMode[adapter->bd_number] == IXGBE_FDIR_FILTER_ON)
  return 1;

 return 0;

}
