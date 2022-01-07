
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_adapter {int flags; } ;


 int IXGBE_FLAG_FDIR_HASH_CAPABLE ;
 int IXGBE_FLAG_FDIR_PERFECT_CAPABLE ;
 int e_dev_info (char*) ;
 int ixgbe_adapter_fdir_capable (struct ixgbe_adapter*) ;

void ixgbe_set_fdir_flags(struct ixgbe_adapter *adapter, u32 flags)
{
 u32 *aflags = &adapter->flags;


 *aflags |= flags;


 if (!ixgbe_adapter_fdir_capable(adapter)) {




  *aflags &= ~(IXGBE_FLAG_FDIR_HASH_CAPABLE |
        IXGBE_FLAG_FDIR_PERFECT_CAPABLE);
  e_dev_info("Flow Director disabled\n");
 }
}
