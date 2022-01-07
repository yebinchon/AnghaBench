
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int mac_lock; } ;
typedef TYPE_1__ adapter_t ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int t1_tpi_write (TYPE_1__*,int,int) ;

__attribute__((used)) static void vsc_write(adapter_t *adapter, u32 addr, u32 data)
{
 spin_lock_bh(&adapter->mac_lock);
 t1_tpi_write(adapter, (addr << 2) + 4, data & 0xFFFF);
 t1_tpi_write(adapter, addr << 2, (data >> 16) & 0xFFFF);



 spin_unlock_bh(&adapter->mac_lock);
}
